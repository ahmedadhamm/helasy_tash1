import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final String text;
  late final ImageProvider<Object> image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Image.asset(
          'assets/images/Group 639.png',
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Column(children: [
              Row(children: [
                Image.asset(
                  'assets/images/location 2.png',
                ),
                const SizedBox(
                  width: 30,
                ),
                Center(
                  child: Column(
                    children: [
                      const Text(
                        'حدد موقعك لإيجاد أقرب الخدمات عليك      ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Container(
                          height: 27,
                          width: 129,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              '    تحديد الموقع الحالي   ',
                              style: TextStyle(fontSize: 11),
                            ),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFF4F7FB),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none),
                    hintText: '                         إبحث عن أقرب مستشفى',
                    prefixIcon: const Icon(Icons.search),
                  ),
                ),
              )
            ])),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Image.asset(
                'assets/images/Group 906.png',
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      '  أطباء',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Center(
              child: Row(
                children: [
                  Center(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                                height: 27,
                                width: 83,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Center(
                                  child: Text(
                                    ' أخرى ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                                height: 27,
                                width: 83,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Center(
                                  child: Text(
                                    ' مستشفيات ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                                height: 27,
                                width: 83,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Center(
                                  child: Text(
                                    ' القلب ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                                height: 27,
                                width: 83,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Center(
                                  child: Text(
                                    ' العيون ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
            flex: 1,
            child: Container(
          child: const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.zero)),
              labelText: ' الدكتور أحمد المغربي   \n مطور الهوية الديناميكية  \nمستشفى         ',
              suffixIcon: Padding( padding: EdgeInsets.only(left: 16.0),
                child:CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/Group 486.png',
                  ),
                  radius: 55,
                  backgroundColor: Colors.white, foregroundImage: null,
                  // backgroundPosition: Alignment.centerRight
                ),

            ),
          ),style:  TextStyle(fontWeight: FontWeight.bold),
        )),
        ) ]),
      bottomNavigationBar: CurvedNavigationBar(
        // key: _bottomNavigationKey,
        index: 0,
        height: 60.0,
        items: <Widget>[
          Image.asset('assets/images/Home.png'),
          Image.asset('assets/images/Book Icon.png'),
          Image.asset('assets/images/Emergency Icon.png'),
          Image.asset('assets/images/Records.png'),
          Image.asset('assets/images/Menu.png'),
        ],
      ),
    );
  }
}
