import 'package:flutter/material.dart';

class MemberCard extends StatelessWidget {
  final int id;
  final String photoUrl;
  final String name;
  final int generation;
  final bool isOshi;

  const MemberCard({
    Key? key,
    required this.id,
    required this.photoUrl,
    required this.name,
    required this.generation,
    required this.isOshi
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(children: [
        Expanded(
          child: Image.network(
            photoUrl,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                name,
                textAlign: TextAlign.start,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0
                ),
              ),
              Text(
                "${generation}th Generation",
                textAlign: TextAlign.start,
                style: const TextStyle(color: Colors.red),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: IconButton.filled(
              iconSize: 16.0,
              padding: const EdgeInsets.all(4.0),
              color: Colors.white,
              style: IconButton.styleFrom(
                  backgroundColor: Colors.red,
                  minimumSize: const Size.fromHeight(32.0)
              ),
              onPressed: () {},
              icon: Icon(isOshi ? Icons.favorite : Icons.favorite_border)
          ),
        ),
      ])
    );
  }
}