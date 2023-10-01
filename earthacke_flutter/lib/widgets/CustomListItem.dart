import 'package:flutter/material.dart';

class CustomListItem extends StatelessWidget {
  final int number;
  final String text1;
  final String text2;
  final String date;
  final String time;


  CustomListItem({required this.number, required this.text1, required this.text2, required this.date, required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30, // Adjust the radius as needed
          backgroundColor: Colors.blue, // Customize the background color
          child: Text(
            '$number',
            style: const TextStyle(
              color: Colors.white, // Customize the text color
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              text1,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0), // Add some space between the two text widgets
            Text(
              text2,
              style: const TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              date,
              style: const TextStyle(
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 8.0), // Add some space between the two text widgets
            Text(
              time,
              style: const TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        // Add any other customization here
      ),
    );
  }
}
