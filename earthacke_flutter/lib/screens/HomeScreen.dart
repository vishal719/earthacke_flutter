import 'package:flutter/material.dart';

import '../widgets/CustomListItem.dart';

class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }

}

class MyHomeState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {

    List<CustomListItem> customItems = [
      CustomListItem(number: 1, text1: 'Title 1', text2: 'Subtitle 1', date: "june", time: "apl"),
      CustomListItem(number: 2, text1: 'Title 2', text2: 'Subtitle 2', date: "june", time: "apl"),
      CustomListItem(number: 1, text1: 'Title 1', text2: 'Subtitle 1', date: "june", time: "apl"),
      CustomListItem(number: 2, text1: 'Title 2', text2: 'Subtitle 2', date: "june", time: "apl"),
      CustomListItem(number: 1, text1: 'Title 1', text2: 'Subtitle 1', date: "june", time: "apl"),
      CustomListItem(number: 2, text1: 'Title 2', text2: 'Subtitle 2', date: "june", time: "apl"),
      CustomListItem(number: 1, text1: 'Title 1', text2: 'Subtitle 1', date: "june", time: "apl"),
      CustomListItem(number: 2, text1: 'Title 2', text2: 'Subtitle 2', date: "june", time: "apl"),
      CustomListItem(number: 1, text1: 'Title 1', text2: 'Subtitle 1', date: "june", time: "apl"),
      CustomListItem(number: 2, text1: 'Title 2', text2: 'Subtitle 2', date: "june", time: "apl"),
      CustomListItem(number: 1, text1: 'Title 1', text2: 'Subtitle 1', date: "june", time: "apl"),
      CustomListItem(number: 2, text1: 'Title 2', text2: 'Subtitle 2', date: "june", time: "apl"),
      CustomListItem(number: 1, text1: 'Title 1', text2: 'Subtitle 1', date: "june", time: "apl"),
      CustomListItem(number: 2, text1: 'Title 2', text2: 'Subtitle 2', date: "june", time: "apl"),
      CustomListItem(number: 1, text1: 'Title 1', text2: 'Subtitle 1', date: "june", time: "apl"),
      CustomListItem(number: 2, text1: 'Title 2', text2: 'Subtitle 2', date: "june", time: "apl"),

      // Add more custom items as needed
    ];

    return Scaffold(

      appBar: AppBar(
        title: Text("Earth-Acke"),
        backgroundColor: Colors.black38,
      ),

      body: Container(
        margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
        child: ListView.builder(
            itemCount: customItems.length,
            itemBuilder: (context, index) {
            return customItems[index];
          },
        ),
      )
    );
  }

}