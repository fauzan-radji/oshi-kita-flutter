import 'package:flutter/material.dart';
import 'package:oshi_kita/di/injection.dart';
import 'package:oshi_kita/ui/screen/detail/detail_view_model.dart';

const baseFontSize = 16.25;
const baseTextStyle = TextStyle(fontSize: baseFontSize);
const spacer = SizedBox(height: 16.0, width: 16.0);

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0).copyWith(bottom: 80.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "JKT48 ${member.generation} Generation",
                style: const TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              spacer,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 2/3,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          member.photoUrl,
                          fit: BoxFit.cover
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Title("Full Name"),
                        Text(
                          member.name,
                          style: baseTextStyle
                        ),

                        spacer,

                        const Title("Nicknames"),
                        Text(
                          member.nicknames.join(", "),
                          style: baseTextStyle
                        ),

                        spacer,

                        const Title("Fanbase"),
                        Text(
                          member.fanbase,
                          style: baseTextStyle
                        ),
                      ]
                    ),
                  ),
                ]
              ),
              spacer,
              Text(
                '"${member.jiko}"',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 22.0,
                )
              ),
              spacer,
              Text(
                member.description,
                style: baseTextStyle
              )
            ]
          ),
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  final String text;
  final TextStyle style;

  const Title(
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