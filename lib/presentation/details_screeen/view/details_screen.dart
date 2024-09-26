import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nearby'),
      ),
      body: ListView.builder(
          itemBuilder: (context,index)=>Card(
            child: ListTile(
              title: Text('hotel $index'),
            ),
          )),
    );
  }
}
