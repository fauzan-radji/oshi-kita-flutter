import 'package:flutter/material.dart';
import 'package:oshi_kita/data/fake_data_source.dart';
import 'package:oshi_kita/di/injection.dart';
import 'package:oshi_kita/model/member.dart';
import 'package:oshi_kita/ui/component/member_grid.dart';
import 'package:oshi_kita/ui/screen/home/home_view_model.dart';

class Home extends StatelessWidget {
  final List<Member> members = FakeDataSource.members;
  final viewModel = HomeViewModel(repository: Injection.provideRepository());

  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Home"),
      ),
      body: MemberGrid(members: viewModel.getAllMembers()),
    );
  }
}