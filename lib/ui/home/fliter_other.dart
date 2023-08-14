import 'package:flutter/material.dart';
import 'package:helasy_tash1/ui/faram/coustom_other.dart';
import 'package:helasy_tash1/ui/faram/coustom_other_two.dart';

class FilterOther extends StatelessWidget{
  const FilterOther({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CoustomOther(text: 'اخري  ', onTap: () {  },),
          SizedBox(
            width: 5,
          ),
          CoustomOtherTwo(),
          const SizedBox(
            width: 5,
          ),
          CoustomOther(text: 'مستشفيات  ', onTap: () {  },),
          SizedBox(
            width: 5,
          ),
          CoustomOtherTwo(),
          SizedBox(
            width: 5,
          ),
          CoustomOther(text: 'القلب ', onTap: () {  },),
          SizedBox(
            width: 5,
          ),
          CoustomOtherTwo(),
          SizedBox(
            width: 5,
          ),
          CoustomOther(text: 'العيون  ', onTap: () {  },),
          SizedBox(
            width: 5,
          ),
          CoustomOtherTwo(),
          SizedBox(
            width: 5,
          ),
          CoustomOther(text: 'مخ ', onTap: () {  },),
          SizedBox(
            width: 5,
          ),
          CoustomOtherTwo(),
          SizedBox(
            width: 5,
          ),
          CoustomOther(text: 'الكل ', onTap: () {  },),
          SizedBox(
            width: 5,
          ),
          CoustomOtherTwo(),
          SizedBox(
            width: 5,
          ),
        ],
      ),
    );
  }




}