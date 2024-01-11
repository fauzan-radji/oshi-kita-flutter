import 'package:flutter/material.dart';
import 'package:oshi_kita/di/injection.dart';
import 'package:oshi_kita/ui/screen/detail/detail_view_model.dart';

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
      body: SingleChildScrollView(
        child: Column(children: [
          Image.network(
            member.photoUrl,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: [
              Text(
                member.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
              Text(
                "${member.generation}th Generation",
                style: const TextStyle(color: Colors.red),
              ),
              const SizedBox(height: 16.0),
              Text(
                member.description,
                style: const TextStyle(fontSize: 16.0),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}