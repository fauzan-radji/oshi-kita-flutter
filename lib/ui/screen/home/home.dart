import 'package:flutter/material.dart';
import 'package:oshi_kita/di/injection.dart';
import 'package:oshi_kita/model/member.dart';
import 'package:oshi_kita/ui/component/member_grid.dart';
import 'package:oshi_kita/ui/component/search_bar.dart' as my;
import 'package:oshi_kita/ui/screen/home/home_view_model.dart';

class Home extends StatefulWidget {

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final viewModel = HomeViewModel(repository: Injection.provideRepository());
  List<Member> _members = List.empty();

  _HomeState() {
    _members = viewModel.getFiltered("");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
          child: my.SearchBar(onChanged: (value) {
            setState(() {
              _members = viewModel.getFiltered(value);
            });
          }),
        ),
      ),
      body: MemberGrid(members: _members),
    );
  }
}