import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:helasy_tash1/ui/home/page_everyone.dart';
import 'package:helasy_tash1/ui/home/selected_other.dart';

import '../faram/avater_other.dart';
import '../faram/coustom_other.dart';
import '../faram/coustom_other_two.dart';
import '../faram/location_select.dart';

class LocationBady extends StatefulWidget {
  static const String routeName = 'location';

  @override
  State<LocationBady> createState() => _LocationBadyState();
}

class _LocationBadyState extends State<LocationBady> {

  int selectedIndexOne = -1;
  int selectedIndexTwo = -1;
  bool isChanged = false;

  void selectContainerOne(int index) {
    setState(() {
      if (selectedIndexOne == index) {
        selectedIndexOne =
            -1; // Unselect if the same container is clicked again.
      } else {
        selectedIndexOne = index;
      }
    });
  }

  void selectContainerTwo(int index) {
    setState(() {
      if (selectedIndexTwo != index) {
        selectedIndexTwo =
            -1; // Unselect if the same container is clicked again.
      } else {
        selectedIndexTwo = index;
      }
    });
  }

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
      // key: _scaffoldKey,
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
      body: Builder(
        builder: (context) => Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset('assets/images/Group 639.png'),
            const SizedBox(
              height: 25,
              // width: 50,
            ),
            // CustomFirstRow(),
            // CustomTextField(),
            // // FilterOneBody(),
            // ConstrainedBox(
            //   constraints: BoxConstraints(
            //       maxHeight: 50, maxWidth: MediaQuery.of(context).size.width),
            //   child: ListView.builder(
            //     // padding: EdgeInsets.only(right: 20,left: 5),
            //     shrinkWrap: true,
            //     controller: ScrollController(),
            //     scrollDirection: Axis.horizontal,
            //     itemCount: filterListOne.length,
            //     itemBuilder: (context, index) {
            //       return filterListOne[index];
            //     },
            //   ),
            // ),

            const SizedBox(
              height: 5,
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
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
                              child:   Column(
                                children: [
                                  InkWell(
                                    onTap: (){
                                      Navigator.pushNamed(context,
                                          SelectedOther.routeName);
                                    },
                                    child: const Center(
                                      child:
                                      Text(
                                        ' تحديد الموقع الحالي ',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,),

                                      ),
                                    ),
                                  ),
                                ],
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
                                fillColor:
                                    const Color.fromRGBO(244, 247, 251, 1),
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
                      onTap: () {},
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
                      onTap: () {
                        Navigator.pushNamed(context, LocationBady.routeName);
                      },
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

            IconButton(
                onPressed: () {
                  setState(() {
                    isChanged = !isChanged;
                  });
                },
                icon: const Icon(Icons.change_circle_sharp)),

            isChanged
                ? Expanded(
                    child: ListView(
                      shrinkWrap: true,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        AvaterOther(
                          text2: 'مطور الهوية الديناميكية',
                          text1: 'الدكتور عبدالله سعودي',
                          avater: 'assets/images/Group 486.png',
                          text3: 'مستشفي',
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        AvaterOther(
                          text2: 'فرع التجمع',
                          text1: 'مستشفي الدكتور فريد',
                          avater: 'assets/images/image 26.png',
                          text3: '380 فرع',
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        AvaterOther(
                          text2: 'مطور الهوية الديناميكية',
                          text1: 'الدكتور وليد',
                          avater: 'assets/images/Group 486.png',
                          text3: 'مستشفي',
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        AvaterOther(
                          text2: 'فرع التجمع',
                          text1: 'مستشفي دكتور ابو السيد',
                          avater: 'assets/images/image 26.png',
                          text3: '380 فرع',
                        )
                      ],
                    ),
                  )
                : Expanded(
                    child: ListView(
                      controller: ScrollController(),
                      scrollDirection: Axis.vertical,
                      children: [
                        Image.asset(
                          'assets/images/Frame 13.png',
                          height: 170,
                        ),
                        const Center(
                            child: Text(
                          'نعمل جاهدين علي توفير خدماتنا \n بالقرب من موقعك الحالي',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 130),
                          child: Container(
                            height: 40,
                            // width: 5,
                            decoration: BoxDecoration(
                                color: const Color(0xff548CFF),
                                borderRadius: BorderRadius.circular(18)),
                            child: const Center(
                              child: Text(
                                'تغيير الموقع ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
/*
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomContainerTwo(text: 'اخري  '),

                  CustomContainerTwo(text: 'مستشفيات  '),
                  CustomContainerTwo(text: 'القلب '),
                  CustomContainerTwo(text: 'العيون  '),
                  CustomContainerTwo(text: 'مخ '),

                  CustomContainerTwo(text: 'الكل '),

                ],
              ),
            ),
*/

// ConstrainedBox(
//   constraints: BoxConstraints(
//       maxHeight: 50, maxWidth: MediaQuery.of(context).size.width),
//   child: ListView.builder(
//     // padding: EdgeInsets.only(right: 20,left: 5),
//     shrinkWrap: true,
//     controller: ScrollController(),
//     scrollDirection: Axis.horizontal,
//     itemCount: filterListTwo.length,
//     itemBuilder: (context, index) {
//       return filterListTwo[index];
//     },
//   ),
// ),
