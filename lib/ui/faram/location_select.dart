import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../home/location_bady.dart';
import '../home/page_everyone.dart';
import 'avater_other.dart';
import 'coustom_other.dart';
import 'coustom_other_two.dart';

class LocationSelect extends StatefulWidget {
  static const String routeName = '';

  @override
  State<LocationSelect> createState() => _SelectLocationBodyState();
}

class _SelectLocationBodyState extends State<LocationSelect> {
  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'Item1',
      'Item2',
      'Item3',
      'Item4',
      'Item5',
      'Item6',
      'Item7',
      'Item8',
    ];
    String? selectedValue;
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
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  LocationBady.routeName,
                );
              },
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
                                borderSide:
                                    const BorderSide(color: Colors.white),
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
                    Navigator.pushNamed(context, LocationSelect.routeName);
                  },
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
                  text: 'العيون  ',
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
                  text: 'مخ ',
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
                  text: 'الكل ',
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
              ],
            ),
          ),
        ),
        Row(
          children: [
            AvaterOther(
              text2: 'مطور الهوية الديناميكية',
              text1: 'الدكتور عبدالله سعودي',
              avater: 'assets/images/Group 486.png',
              text3: 'مستشفي',
            ),
          ],
        ),
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
    );
  }
// GestureDetector(
//   onTap: () {
//     showBottomSheet(
//       context: context,
//       builder: (BuildContext context) => Container(
//         decoration: const BoxDecoration(
//             // color: Colors.white,
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.white54,
//                 blurRadius: 20,
//                 spreadRadius: 20,
//                 // blurStyle: BlurStyle.outer
//               )
//             ],
//             // color: Colors.red,
//             borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(25),
//                 topRight: Radius.circular(25))),
//         height: 250,
//         width: MediaQuery.of(context).size.width,
//         // color: Colors.red,
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               const Padding(
//                 padding: EdgeInsets.only(right: 30, top: 0),
//                 child: Text(
//                   'تغيير الموقع',
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 18,
//                       color: Colors.black),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 30),
//                 child: SizedBox(
//                   height: 50,
//                   child: TextField(
//                     decoration: InputDecoration(
//                       hintTextDirection: TextDirection.rtl,
//                       hintText: ' القاهره',
//                       hintStyle: const TextStyle(),
//                       filled: true,
//                       fillColor: const Color.fromRGBO(241, 246, 255, 1),
//                       border: InputBorder.none,
//                       enabledBorder: OutlineInputBorder(
//                           borderSide:
//                               const BorderSide(color: Colors.white),
//                           borderRadius: BorderRadius.circular(20)),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 30),
//                 child: SizedBox(
//                   height: 40,
//                   child: TextField(
//                     decoration: InputDecoration(
//                       hintTextDirection: TextDirection.rtl,
//                       hintText: 'الشيخ زايد',
//                       filled: true,
//                       fillColor: const Color.fromRGBO(241, 246, 255, 1),
//                       border: InputBorder.none,
//                       enabledBorder: OutlineInputBorder(
//                           borderSide:
//                               const BorderSide(color: Colors.white),
//                           borderRadius: BorderRadius.circular(20)),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 30),
//                 child: GestureDetector(
//                   onTap: () {
//                     Navigator.of(context).pop();
//                   },
//                   child: Container(
//                     height: 35,
//                     width: MediaQuery.of(context).size.width,
//                     decoration: BoxDecoration(
//                         color: const Color(0xff548CFF),
//                         borderRadius: BorderRadius.circular(18)),
//                     child: const Center(
//                       child: Text(
//                         'تاكيد الموقع ',
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 18),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               // SizedBox(height: 10,),
//
//               const Center(
//                 child: Text(
//                   'او',
//                   style: TextStyle(color: Colors.black, fontSize: 14),
//                 ),
//               ),
//               // SizedBox(height: 10,),
//
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 30),
//                 child: GestureDetector(
//                   onTap: () {
//                     Navigator.of(context).pop();
//                   },
//                   child: Container(
//                     height: 35,
//                     width: MediaQuery.of(context).size.width,
//                     decoration: BoxDecoration(
//                         color: const Color.fromRGBO(241, 246, 255, 1),
//                         borderRadius: BorderRadius.circular(18)),
//                     child: const Center(
//                       child: Text(
//                         'تحديد موقعي الحالي ',
//                         style: TextStyle(
//                             fontSize: 18,
//                             color: Colors.blue,
//                             fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       // enableDrag: false,
//     );
//   },
//   child: Container(
//     height: 35,
//     width: 165,
//     decoration: BoxDecoration(
//         color: const Color(0xff548CFF),
//         borderRadius: BorderRadius.circular(18)),
//     child: const Center(
//       child: Text(
//         'تحديد الموقع الحالي',
//         style:
//             TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//       ),
//     ),
//   ),
// ),
}
