import 'package:flutter/material.dart';

class MainScrenn extends StatefulWidget {
  const MainScrenn({Key? key}) : super(key: key);

  @override
  State<MainScrenn> createState() => _MainScrennState();
}

class _MainScrennState extends State<MainScrenn> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.teal,
          title: const Text('مسبحتي', style: TextStyle(fontFamily: 'Tajawal', fontSize: 20, fontWeight: FontWeight.bold),),
        ),
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assest/images/mosque.jpg"))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 90,
                height: 90,
                //margin: const EdgeInsetsDirectional.only(top: 250),
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                    //borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage("assest/images/man.png"))),
              ),
              Card(
                margin: const EdgeInsetsDirectional.only(
                  top: 15,
                  start: 30,
                  end: 30,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(
                      color: Colors.teal,
                      width: 2,
                    )),
                child: SizedBox(
                  height: 60,
                  child: Row(
                    children: [
                      const Spacer(),
                      const SizedBox(
                        child: Text(
                          'اللهم صلي على محمد',
                          style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        alignment: Alignment.center,
                        height: double.infinity,
                        width: 40,
                        decoration: const BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        child: Text(
                          counter.toString(),
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              fontFamily: 'Tajawal'),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  start: 30,
                  end: 30,
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10)
                            )
                          )
                        ),
                        onPressed: () {
                          setState(() {
                            counter += 1;
                          });
                        },
                        child: const Text('إضافة', style: TextStyle(fontFamily: 'Tajawals', fontSize: 14),),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)
                              )
                          )
                      ),
                      onPressed: () {
                        setState(() {
                          counter = 0;
                        });
                      },
                      child: const Text('إعادة', style: TextStyle(color: Colors.teal, fontFamily: 'Tajawal', fontSize: 12),),
                    )

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
