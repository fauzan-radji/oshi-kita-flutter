import 'package:flutter/material.dart';
import 'package:oshi_kita/model/member.dart';
import 'package:oshi_kita/ui/component/member_card.dart';

class MemberGrid extends StatelessWidget {

  final int crossAxisCount;
  final List<Member> members;

  const MemberGrid({Key? key, required this.members, this.crossAxisCount = 2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      clipBehavior: Clip.antiAlias,
      maxCrossAxisExtent: 300,
      padding: const EdgeInsets.all(12.0),
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      childAspectRatio: 3/5,
      children: members.map((member) => MemberCard(
        id: member.id,
        photoUrl: member.photoUrl,
        name: member.name,
        generation: member.generation,
        isOshi: member.isOshi,
      )).toList(),
    );
  }
}