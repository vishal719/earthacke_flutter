import 'package:flutter/material.dart';

import '../models/Response.dart';

class CustomListItem extends StatelessWidget {

  Properties properties;

  CustomListItem({required this.properties});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30, // Adjust the radius as needed
          backgroundColor: getMagnitudeColor(properties.mag!.toDouble()), // Customize the background color
          child: Text(
            properties.mag.toString(),
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
              getPlace(properties.place??'Place'),
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0), // Add some space between the two text widgets
            Text(
              getCity(properties.place??'Place'),
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
              properties.formattedDate(),
              style: const TextStyle(
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 8.0), // Add some space between the two text widgets
            Text(
              properties.formattedTime(),
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

  Color getMagnitudeColor(double magnitude) {
    Color magnitudeColor;

    switch (magnitude) {
      case 0:
      case 6.0:
        magnitudeColor = Colors.green; // You can use any color you like
        break;
      case 6.2:
        magnitudeColor = Colors.blue;
        break;
      case 6.3:
        magnitudeColor = Colors.deepOrange;
        break;
      case 6.4:
        magnitudeColor = Colors.orange;
        break;
      case 6.5:
        magnitudeColor = Colors.deepOrange;
        break;
      case 6.6:
        magnitudeColor = Colors.redAccent;
        break;
      case 6.7:
        magnitudeColor = Colors.deepPurple;
        break;
      case 6.8:
        magnitudeColor = Colors.red;
        break;
      case 6.9:
        magnitudeColor = Colors.brown;
        break;
      default:
        magnitudeColor = Colors.brown;
        break;
    }

    return magnitudeColor;
  }

  String getPlace(String place){
    int len = place.length;
    String firstPart;
    String secondPart;

    if(place != null){
      if (place.contains("of")) {
        int i = place.indexOf("of");
        while (i < len && place[i] == ' ') {
          i++;
        }
        firstPart = place.substring(0, i);
        secondPart = place.substring(i);
      } else {
        firstPart = '';
        secondPart = place;
      }
      return firstPart;
    }
    return "";
  }

  String getCity(String place){
    int len = place.length;
    String firstPart;
    String secondPart;

    if(place != null){
      if (place.contains("of")) {
        int i = place.indexOf("of");
        while (i < len && place[i] == ' ') {
          i++;
        }
        firstPart = place.substring(0, i);
        secondPart = place.substring(i);
      } else {
        firstPart = '';
        secondPart = place;
      }
      return secondPart;
    }

    return "";
  }

}
