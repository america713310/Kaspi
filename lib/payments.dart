import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  const Payment({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('Item ${index + 1}'),
            );
          },
        ),
    );
  }
}