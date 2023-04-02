import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'startup.dart';
import 'startup_details.dart';

class StartupCard extends StatelessWidget {
  final Startup startup;

  StartupCard({required this.startup});

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat("#,##,###");

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => StartupDetails(startup: startup)),
        );
      },
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                startup.name,
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
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
            ],
          ),
        ),
      ),
    );
  }
}
