import 'dart:convert';
import 'dart:ffi';
import 'package:earthacke_flutter/models/Response.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../widgets/CustomListItem.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }
}

class MyHomeState extends State<MyHomePage> {
  List<CustomListItem> customItems = [];

  @override
  void initState() {
    fetchData(); // Call your async function for fetching data
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Earth-Acke"),
        backgroundColor: Colors.black38,
      ),
      body: Container(
        margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
        child: RefreshIndicator(
          onRefresh: fetchData,
          child: ListView.builder(
            itemCount: customItems.length,
            itemBuilder: (context, index) {
              return customItems[index];
            },
          ),
        ),
      ),
    );
  }

  Future<void> fetchData() async {
    const String url =
        "https://earthquake.usgs.gov/fdsnws/event/1/query?format=geojson&orderby=time&minmag=10&limit=10";

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        // Parse the JSON response
        final Map<String, dynamic> jsonData = json.decode(response.body);

        // Extract properties and add them to the list
        if (jsonData['features'] != null) {
          final List<dynamic> features = jsonData['features'];

          for (final feature in features) {
            final propertiesData = feature['properties'];
            final properties = Properties.fromJson(propertiesData);

            setState(() {
              customItems.add(CustomListItem(properties: properties));
            });
          }
        }

        // Now, customItems contains instances of the CustomListItem
        print('Properties List: $customItems');
      } else {
        // Handle errors
        print('HTTP GET request failed with status ${response.statusCode}');
      }
    } catch (e) {
      // Handle network or other exceptions
      print('Error: $e');
    }
    return ;
  }
}
