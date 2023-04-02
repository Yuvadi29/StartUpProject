import 'package:flutter/material.dart';
import 'startup_card.dart';
import 'startup_data.dart';
import 'startup.dart';

class StartupList extends StatelessWidget {
  final List<Startup> startups;

  StartupList({required this.startups});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: startups.length,
        itemBuilder: (context, index) {
          return StartupCard(startup: startups[index]);
        },
      ),
    );
  }
}
