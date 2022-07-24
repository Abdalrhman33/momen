import 'package:flutter/material.dart';

class SimpleApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("BIO APP"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 20, end: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            SizedBox(width: MediaQuery.of(context).size.width,),
            CircleAvatar(
              radius: 55,
              backgroundColor: Colors.pink,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assest/images/293028300_1069638193675222_5310754794269718292_n.jpg"),
              ),
            ),
            Text("Modle Name", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Text(("Abut Modle"), style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),),
            Divider(
              color: Colors.white,
              indent: 20,
              endIndent: 20,
              thickness: 1.5,
              height: 50,
            ),
            ListTile(
              tileColor: Colors.white,
              leading: Icon(Icons.email),
              title: Text("Email Adress"),
              subtitle: Text("aalrhman080@gmail.com"),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                print("Email Adress");
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
            ),
            SizedBox(
              height: 20,
              width: double.infinity,
            ),
            ListTile(
              tileColor: Colors.white,
              leading: Icon(Icons.phone_android),
              title: Text("Mobile Number"),
              subtitle: Text("+970592426177"),
              trailing: Icon(Icons.phone),
              onTap: (){
                print("Email Adress");
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
            ),
            Spacer(),
            Text("Follow Your Favoret Modle")
          ]
          ,
        ),
      ),
    );
  }
}
