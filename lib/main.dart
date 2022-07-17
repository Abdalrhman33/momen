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
          title: const Text("Welcome", style: TextStyle(fontFamily: "Raleway") ),
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
            onPressed: ()=> ("BACK BUTTON PRESED"),
            //iconSize: 30,
            icon: const Icon(
              Icons.menu,
              //Icons.arrow_back,
              size: 30,
            ),
            //color: Colors.black,
          ),
          actions: [IconButton(onPressed: ()=> ("Serch"), icon: const Icon(Icons.search)),
                    IconButton(onPressed: ()=> ("ADD"), icon: const Icon(Icons.add))
          ],
        ),
        // body:Column(
        //   children: [
        //     Text('gdfgdfgdf'),
        //     Container(
        //       width: 200,
        //       height: 200,
        //       decoration: BoxDecoration(
        //         color: Colors.red,
        //           image: DecorationImage(image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png'))
        //       ),
        //     ),
        //   ],
        // ),
        // Column(
        //   children: [
            body: Container(
              color: Colors.red,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.topCenter,  //بتحكم بالموقع مع الحافظ على الحجم الـصلي للصورة
              child: const Image(
                width: 300,
               // alignment: Alignment.topCenter, // بتحكم بالموقع أعلى وأسفل فقط.. ما بحافظ على الحجم الاصلي.. بحافظ فقط على الارتفاع // لو كان في عرض داخل الابن يتم تفعيله
                //fit: BoxFit.cover,
                 image: NetworkImage("https://cdn.britannica.com/92/177992-050-AED0DC28/Dome-of-the-Rock-Temple-Mount-Jerusalem.jpg"),
               ),
            ),
        //   ],
        // ),
         //body: Image.network("https://cdn.britannica.com/92/177992-050-AED0DC28/Dome-of-the-Rock-Temple-Mount-Jerusalem.jpg"),
        // Container(
        //     width: 300,
        //     height: 300,
        //     child: Image.network("https://cdn.britannica.com/92/177992-050-AED0DC28/Dome-of-the-Rock-Temple-Mount-Jerusalem.jpg")),
      ),
    );
  }
}


// const Center(
// child:  Text(
// "Welcome in Flutter Course",
// style: TextStyle(fontSize: 25, color: Colors.blue, fontFamily: "Roboto", fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
// ),
// ),