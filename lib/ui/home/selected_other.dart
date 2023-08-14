import 'package:flutter/material.dart';

class SelectedOther extends StatefulWidget {
  static const String routeName = 'select';

  @override
  State<SelectedOther> createState() => _SelectedOtherState();
}

class _SelectedOtherState extends State<SelectedOther> {
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
    return Column(

      children: [
        Row(
            children: [
          GestureDetector(
            onTap: () {
              showBottomSheet(
                context: context,
                builder: (BuildContext context) => Container(
                  decoration: const BoxDecoration(
                      // color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white54,
                          blurRadius: 20,
                          spreadRadius: 20,
                          // blurStyle: BlurStyle.outer
                        )
                      ],
                      // color: Colors.red,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.red,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 30, top: 0),
                          child: Text(
                            'تغيير الموقع',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: SizedBox(
                            height: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                hintTextDirection: TextDirection.rtl,
                                hintText: ' القاهره',
                                hintStyle: const TextStyle(),
                                filled: true,
                                fillColor: const Color.fromRGBO(241, 246, 255, 1),
                                border: InputBorder.none,
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: SizedBox(
                            height: 40,
                            child: TextField(
                              decoration: InputDecoration(
                                hintTextDirection: TextDirection.rtl,
                                hintText: 'الشيخ زايد',
                                filled: true,
                                fillColor: const Color.fromRGBO(241, 246, 255, 1),
                                border: InputBorder.none,
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        // Padding(
                        //   padding: const EdgeInsets.symmetric(horizontal: 30),
                        //   child: GestureDetector(
                        //     onTap: () {
                        //       Navigator.of(context).pop();
                        //     },
                        //     child: Container(
                        //       height: 35,
                        //       width: MediaQuery.of(context).size.width,
                        //       decoration: BoxDecoration(
                        //           color: Color(0xff548CFF),
                        //           borderRadius: BorderRadius.circular(18)),
                        //       child: const Center(
                        //         child: Text(
                        //           'تاكيد الموقع ',
                        //           style: TextStyle(
                        //               color: Colors.white,
                        //               fontWeight: FontWeight.bold,
                        //               fontSize: 18),
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        // SizedBox(height: 10,),

                        // const Center(
                        //   child: Text(
                        //     'او',
                        //     style: TextStyle(color: Colors.black, fontSize: 14),
                        //   ),
                        // ),
                        // SizedBox(height: 10,),

                        // Padding(
                        //   padding: const EdgeInsets.symmetric(horizontal: 30),
                        //   child: GestureDetector(
                        //     onTap: () {
                        //       Navigator.of(context).pop();
                        //     },
                        //     child: Container(
                        //       height: 35,
                        //       width: MediaQuery.of(context).size.width,
                        //       decoration: BoxDecoration(
                        //           color: const Color.fromRGBO(241, 246, 255, 1),
                        //           borderRadius: BorderRadius.circular(18)),
                        //       child: const Center(
                        //         child: Text(
                        //           'تحديد موقعي الحالي ',
                        //           style: TextStyle(
                        //               fontSize: 18,
                        //               color: Colors.blue,
                        //               fontWeight: FontWeight.bold),
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
                // enableDrag: false,
              );
            },
            // child: Container(
            //   height: 35,
            //   width: 165,
            //   decoration: BoxDecoration(
            //       color: const Color(0xff548CFF),
            //       borderRadius: BorderRadius.circular(18)),
            //   child: const Center(
            //     child: Text(
            //       'تحديد الموقع الحالي',
            //       style:
            //           TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            //     ),
            //   ),
            // ),
          ),
        ]),
      ],
    );
  }
}
