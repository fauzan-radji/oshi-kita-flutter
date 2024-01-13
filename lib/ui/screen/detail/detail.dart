import 'package:flutter/material.dart';
import 'package:oshi_kita/di/injection.dart';
import 'package:oshi_kita/ui/screen/detail/detail_large.dart';
import 'package:oshi_kita/ui/screen/detail/detail_medium.dart';
import 'package:oshi_kita/ui/screen/detail/detail_small.dart';
import 'package:oshi_kita/ui/screen/detail/detail_view_model.dart';

const baseFontSize = 16.25;
const baseTextStyle = TextStyle(fontSize: baseFontSize);
const spacer = SizedBox(height: 16.0, width: 16.0);

enum Breakpoint {
  medium(width: 500),
  large(width: 740);

  final int width;
  const Breakpoint({required this.width});
}

class Detail extends StatelessWidget {
  final int id;
  final viewModel = DetailViewModel(repository: Injection.provideRepository());

  Detail({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final member = viewModel.getMember(id);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(member.nicknames[0]),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {},
        child: Icon(
          member.isOshi ? Icons.favorite : Icons.favorite_border,
          color: Colors.white,
        ),
      ),
      body: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > Breakpoint.large.width) {
          return DetailLarge(member: member);
        } else if (constraints.maxWidth > Breakpoint.medium.width) {
          return DetailMedium(member: member);
        } else {
          return DetailSmall(member: member);
        }
      }),
    );
  }
}

class DetailTitle extends StatelessWidget {
  final String text;
  final TextStyle style;

  const DetailTitle(
      this.text, {
    super.key,
    this.style = const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: baseFontSize,
      color: Colors.red,
    ),
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}