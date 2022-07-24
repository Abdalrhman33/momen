import 'package:flutter/material.dart';

class StackImage extends StatelessWidget {
  const StackImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey,
      // appBar: AppBar(
      //   title: Text("Welcome"),
      //   leading: IconButton(
      //     icon: Icon(Icons.menu),
      //     onPressed: () {},
      //   ),
      // ),
      body: Stack(children: [
        Image.asset(
          "assest/images/293028300_1069638193675222_5310754794269718292_n.jpg",
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Center(
          child: Text(
            "Welcome Baby",
            style: TextStyle(fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
        )
      ]),
    );
  }
}
