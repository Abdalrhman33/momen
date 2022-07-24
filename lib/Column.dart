import 'package:flutter/material.dart';

class Colum extends StatelessWidget {
  const Colum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Welcome"),
      // ),
      body: Column(
       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              color: Colors.pink,
              height: 70,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.purple,
              height: 70,
            ),
          ),

          Expanded(
            child: Container(
              color: Colors.pinkAccent,
              height: 70,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.purpleAccent,
              height: 70,
            ),
          ),

        ],
      ),
    );
  }
}
