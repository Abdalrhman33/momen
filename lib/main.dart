import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text("Welcome"),
          backgroundColor: Colors.blue,
          elevation: 3,
          //centerTitle: true,
          titleSpacing: 10,
          //   leading: GestureDetector(
          //     onTap: (){
          //       print("BACK BUTTON PRESED");
          //     },
          //       child: const Icon(
          //           Icons.arrow_back)),
          leading: IconButton(
            onPressed: ()=> print("BACK BUTTON PRESED"),
            //iconSize: 30,
            icon: const Icon(
              Icons.menu,
              //Icons.arrow_back,
              size: 30,
            ),
            //color: Colors.black,
          ),
          actions: [IconButton(onPressed: ()=> print("Serch"), icon: Icon(Icons.search)),
                    IconButton(onPressed: ()=> print("ADD"), icon: Icon(Icons.add))
          ],
        ),
        body: const SafeArea(
          child: Center(
            child: Text(
              "Welcome in Flutter Course",
              style: TextStyle(fontSize: 25, color: Colors.blue, fontFamily: "Roboto", fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
