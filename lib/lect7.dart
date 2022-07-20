import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          elevation: 7,
          centerTitle: true,
          title: const Text("Welcome"),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(width: double.infinity,),
            Container(
              width: 100,
              height: 100,
              color: Colors.teal,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blueGrey,
            ),
          ],
        ) ,



        //Container and Column
        // body: Container(
        //   padding: EdgeInsets.all(10),
        // // body: Container(
        //      color: Colors.black12,
        // //     width: double.infinity,
        //     child: SingleChildScrollView(
        //       child: Column(
        //         //mainAxisSize: MainAxisSize.min,
        //         children: [
        //           Container(
        //             height: 150,
        //             color: Colors.yellow,
        //             margin: EdgeInsets.only(bottom: 20),
        //           ),
        //           Container(
        //             margin: EdgeInsets.only(bottom: 20),
        //             height: 150,
        //             color: Colors.purple,
        //           ),
        //           // SizedBox(
        //           //   height: 20,
        //           // ),
        //           Container(
        //             margin: EdgeInsets.only(bottom: 20),
        //             height: 150,
        //             color: Colors.blue,
        //           ),
        //           Container(
        //             margin: EdgeInsets.only(bottom: 20),
        //             height: 150,
        //             color: Colors.blueGrey,
        //           ),
        //           Container(
        //             margin: EdgeInsets.only(bottom: 20),
        //             height: 150,
        //             color: Colors.teal,
        //           )
        //         ],
        //       ),
        //     )
        // ),
        //
        //-------------------------------------
        // body: const Center(
        //   child: Text("Welcome Your App"),
        // ),
      ),
    );
  }
}
