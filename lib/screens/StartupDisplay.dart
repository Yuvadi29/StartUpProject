import 'package:flutter/material.dart';
import 'startup.dart';
import 'package:intl/intl.dart';
import 'startup_data.dart';
import 'startup_list.dart';

class StartupDisplay extends StatelessWidget {
  const StartupDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat("#,##,###");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Startup Results"),
      ),
      body: SafeArea(
        child: StartupList(
          startups: startupData,
        ),
      ),
    );
  }
}
