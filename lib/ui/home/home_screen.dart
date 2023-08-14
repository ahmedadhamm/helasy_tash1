import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:helasy_tash1/ui/faram/avater_other.dart';
import 'package:helasy_tash1/ui/faram/location_select.dart';
import 'package:helasy_tash1/ui/home/location_bady.dart';
import 'package:helasy_tash1/ui/home/page_everyone.dart';

import '../faram/coustom_other.dart';
import '../faram/coustom_other_two.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // int selectedIndexOne = -1;
  // int selectedIndexTwo = -1;
  // bool isChanged = false;
  //
  // void selectContainerOne(int index) {
  //   setState(() {
  //     if (selectedIndexOne == index) {
  //       selectedIndexOne =
  //           -1; // Unselect if the same container is clicked again.
  //     } else {
  //       selectedIndexOne = index;
  //     }
  //   });
  // }
  //
  // void selectContainerTwo(int index) {
  //   setState(() {
  //     if (selectedIndexTwo != index) {
  //       selectedIndexTwo =
  //           -1; // Unselect if the same container is clicked again.
  //     } else {
  //       selectedIndexTwo = index;
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        const SizedBox(
          height: 50,
        ),
        Image.asset(
          'assets/images/Group 639.png',
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child:
            GestureDetector(
              onTap: () {Navigator.pushNamed(context,
                  LocationBady.routeName,);},
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
                            // height: 27,
                            // width: 129,
                            decoration: BoxDecoration(
                                color: const Color(0xff548CFF),
                                borderRadius: BorderRadius.circular(18)),
                            // decoration: BoxDecoration(
                            //   color: Colors.blue,
                            //   borderRadius: BorderRadius.circular(10),
                            // ),
                          child: const Center(
                            child: Text(
                              ' تحديد الموقع الحالي ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                            // child: const Center(
                            //   child: Text(
                            //     '    تحديد الموقع الحالي   ',
                            //     style: TextStyle(fontSize: 11),
                            //   ),
                            // ),
                        ),
                         const SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                ]),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintStyle: const TextStyle(
                              color: Color.fromRGBO(144, 144, 144, 1),
                            ),
                            fillColor: const Color.fromRGBO(244, 247, 251, 1),
                            filled: true,
                            border: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(100)),
                            hintText: 'ابحث عن اقرب مستشفي ',
                            hintTextDirection: TextDirection.rtl,
                            prefixIcon: const Icon(Icons.search)),
                      ),
                      // child: TextField(
                      //   decoration: InputDecoration(
                      //     filled: true,
                      //     fillColor: Color(0xFFF4F7FB),
                      //     border: OutlineInputBorder(
                      //         borderRadius: BorderRadius.circular(5),
                      //         borderSide: BorderSide.none),
                      //     hintText: '                         إبحث عن أقرب مستشفى',
                      //     prefixIcon: const Icon(Icons.search),
                      //   ),
                      // ),
                    ),
                  ],
                )
              ]),
            )),
        Column(
          children: [
            Center(
              child: ClipRect(
                child: Page_Everyone(),
                // Text(
                //   '  أطباء',
                //   textAlign: TextAlign.center,
                //   style:
                //       TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                // ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CoustomOther(
                  text: 'اخري  ',
                  onTap: () {Navigator.pushNamed(context,
                      LocationSelect.routeName);},
                ),
                const SizedBox(
                  width: 5,
                ),
                CoustomOtherTwo(),
                const SizedBox(
                  width: 5,
                ),
                CoustomOther(
                  text: 'مستشفيات  ',
                  onTap: () {
                    Navigator.pushNamed(context, LocationSelect.routeName);},
                ),
                const SizedBox(
                  width: 5,
                ),
                CoustomOtherTwo(),
                const SizedBox(
                  width: 5,
                ),
                CoustomOther(
                  text: 'القلب ',
                  onTap: () {Navigator.pushNamed(context, LocationSelect.routeName);},
                ),
                const SizedBox(
                  width: 5,
                ),
                CoustomOtherTwo(),
                const SizedBox(
                  width: 5,
                ),
                CoustomOther(
                  text: 'العيون  ',
                  onTap: () {Navigator.pushNamed(context, LocationSelect.routeName);},
                ),
                const SizedBox(
                  width: 5,
                ),
                CoustomOtherTwo(),
                const SizedBox(
                  width: 5,
                ),
                CoustomOther(
                  text: 'مخ ',
                  onTap: () {Navigator.pushNamed(context, LocationSelect.routeName);},
                ),
                const SizedBox(
                  width: 5,
                ),
                CoustomOtherTwo(),
                const SizedBox(
                  width: 5,
                ),
                CoustomOther(
                  text: 'الكل ',
                  onTap: () {Navigator.pushNamed(context,LocationBady.routeName);},
                ),
                const SizedBox(
                  width: 5,
                ),
                CoustomOtherTwo(),
                const SizedBox(
                  width: 5,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 20),
            children: [
              SizedBox(
                height: 15,
              ),
              AvaterOther(
                text2: 'مطور الهوية الديناميكية',
                text1: 'الدكتور عبدالله سعودي',
                avater: 'assets/images/Group 486.png',
                text3: 'مستشفي',
              ),
              SizedBox(
                height: 15,
              ),
              AvaterOther(
                text2: 'فرع العباسيه',
                text1: 'مستشفي الدكتور حسن',
                avater: 'assets/images/image 26.png',
                text3: '380 فرع',
              ),
              SizedBox(
                height: 15,
              ),
              AvaterOther(
                text2: 'مطور الهوية الديناميكية',
                text1: 'الدكتور وليد',
                avater: 'assets/images/Group 486.png',
                text3: 'مستشفي',
              ),
              SizedBox(
                height: 15,
              ),
              AvaterOther(
                text2: 'فرع زايد',
                text1: 'مستشفي دكتور فريد',
                avater: 'assets/images/image 26.png',
                text3: '380 فرع',
              )
            ],
          ),
        ),

        // Expanded(
        //   flex: 1,
        //   child: SingleChildScrollView(
        //     padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        //     child: Center(
        //       child: Row(
        //         children: [
        //           Center(
        //             child: Column(
        //               children: [
        //                 const SizedBox(
        //                   width: 10,
        //                 ),
        //                 Container(
        //                     height: 27,
        //                     width: 83,
        //                     decoration: BoxDecoration(
        //                       color: Colors.white,
        //                       borderRadius: BorderRadius.circular(10),
        //                     ),
        //                     child: const Center(
        //                       child: Text(
        //                         ' أخرى ',
        //                         textAlign: TextAlign.center,
        //                         style: TextStyle(
        //                           fontSize: 15,
        //                           fontWeight: FontWeight.bold,
        //                         ),
        //                       ),
        //                     )),
        //                 const SizedBox(
        //                   width: 10,
        //                 ),
        //                 Container(
        //                     height: 27,
        //                     width: 83,
        //                     decoration: BoxDecoration(
        //                       color: Colors.white,
        //                       borderRadius: BorderRadius.circular(10),
        //                     ),
        //                     child: const Center(
        //                       child: Text(
        //                         ' مستشفيات ',
        //                         textAlign: TextAlign.center,
        //                         style: TextStyle(
        //                           fontSize: 15,
        //                           fontWeight: FontWeight.bold,
        //                         ),
        //                       ),
        //                     )),
        //                 const SizedBox(
        //                   width: 10,
        //                 ),
        //                 Container(
        //                     height: 27,
        //                     width: 83,
        //                     decoration: BoxDecoration(
        //                       color: Colors.white,
        //                       borderRadius: BorderRadius.circular(10),
        //                     ),
        //                     child: const Center(
        //                       child: Text(
        //                         ' القلب ',
        //                         textAlign: TextAlign.center,
        //                         style: TextStyle(
        //                           fontSize: 15,
        //                           fontWeight: FontWeight.bold,
        //                         ),
        //                       ),
        //                     )),
        //                 const SizedBox(
        //                   width: 10,
        //                 ),
        //                 Container(
        //                     height: 27,
        //                     width: 83,
        //                     decoration: BoxDecoration(
        //                       color: Colors.white,
        //                       borderRadius: BorderRadius.circular(10),
        //                     ),
        //                     child: const Center(
        //                       child: Text(
        //                         ' العيون ',
        //                         textAlign: TextAlign.center,
        //                         style: TextStyle(
        //                           fontSize: 15,
        //                           fontWeight: FontWeight.bold,
        //                         ),
        //                       ),
        //                     )),
        //                 const SizedBox(
        //                   width: 10,
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
        // Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Container(
        //           height: 300,
        //           width: 200,
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.start,
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               Column(
        //                 children: [
        //                   Text('jjj'),
        //                   Text(''),
        //                   Text(''),
        //                 ],
        //               ),
        //               Image.asset('assets/images/Group 486.png'),
        //             ],
        //           ),
        //         ),
        //       ],
        //     )
      ]),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.grey.shade100,
        animationCurve: Curves.decelerate,
        color: const Color.fromRGBO(255, 255, 255, 1),
        items: [
          Image.asset('assets/images/Home.png'),
          Image.asset('assets/images/Book Icon.png'),
          Image.asset('assets/images/Emergency Icon.png'),
          Image.asset('assets/images/Records.png'),
          Image.asset('assets/images/Menu.png'),
        ],
      ),
      // bottomNavigationBar: CurvedNavigationBar(
      //   // key: _bottomNavigationKey,
      //   index: 0,
      //   height: 60.0,
      //   items: <Widget>[
      //     Image.asset('assets/images/Home.png'),
      //     Image.asset('assets/images/Book Icon.png'),
      //     Image.asset('assets/images/Emergency Icon.png'),
      //     Image.asset('assets/images/Records.png'),
      //     Image.asset('assets/images/Menu.png'),
      //   ],
      // ),
    );
  }
}
