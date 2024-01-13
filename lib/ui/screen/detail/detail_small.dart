import 'package:flutter/material.dart';
import 'package:oshi_kita/model/member.dart';
import 'package:oshi_kita/ui/screen/detail/detail.dart';

class DetailSmall extends StatelessWidget {
  final Member member;

  const DetailSmall({super.key, required this.member});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                    spacer,
                    Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const DetailTitle("Full Name"),
                            Text(
                                member.name,
                                style: baseTextStyle
                            ),
      
                            spacer,
      
                            const DetailTitle("Nicknames"),
                            Text(
                                member.nicknames.join(", "),
                                style: baseTextStyle
                            ),
      
                            spacer,
      
                            const DetailTitle("Fanbase"),
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
    );
  }
}