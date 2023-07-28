
import 'package:flutter/material.dart';

class SummaryCard extends StatelessWidget {
  SummaryCard({super.key, required this.number, required this.title});

  int number;
  String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(

            children: [
              Text(
                '$number',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              Text(title)
            ],
          ),
        ),
      ),
    );
  }
}