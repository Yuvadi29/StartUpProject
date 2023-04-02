import 'package:flutter/material.dart';
import 'startup.dart';
import 'package:intl/intl.dart';

class StartupDetails extends StatelessWidget {
  final Startup startup;

  StartupDetails({required this.startup});

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat("#,##,###");

    return Scaffold(
      appBar: AppBar(
        title: Text(startup.name),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${startup.industry} - ${startup.subVertical}",
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              "Location: ${startup.city}",
              style: TextStyle(fontSize: 14.0),
            ),
            SizedBox(height: 8.0),
            Text(
              "Investors: ${startup.investors}",
              style: TextStyle(fontSize: 14.0),
            ),
            SizedBox(height: 8.0),
            Text(
              "Investment Type: ${startup.investmentType}",
              style: TextStyle(fontSize: 14.0),
            ),
            SizedBox(height: 8.0),
            Text(
              "Amount: \$${formatter.format(startup.amount)}",
              style: TextStyle(fontSize: 14.0),
        ),
        SizedBox(height: 16.0),
        ElevatedButton(
          onPressed: () {
            // navigate to a new page to show more details about the startup
          },
          child: Text('More Details'),
        ),
      ],
    ),
  ),
);
}
}