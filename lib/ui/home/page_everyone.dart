import 'package:flutter/material.dart';
import 'package:helasy_tash1/ui/faram/faram_everyone.dart';

class Page_Everyone extends StatefulWidget {
  @override
  State<Page_Everyone> createState() => _HomePageState();
}

class _HomePageState extends State<Page_Everyone> {
  int selectedIndexOne = -1;
  int selectedIndexTwo = -1;
  bool isChanged = false;

  void selectContainerOne(int index) {
    setState(() {
      if (selectedIndexOne == index) {
        selectedIndexOne = -1;
      } else {
        selectedIndexOne = index;
      }
    });
  }

  void selectContainerTwo(int index) {
    setState(() {
      if (selectedIndexTwo != index) {
        selectedIndexTwo = -1;
      } else {
        selectedIndexTwo = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FaramEveryone(selectedNumber: 0,
            //  width: 150,
            text: 'مراكز اشعة',
            imagePath: 'assets/images/مراكز الاشعات.png',
            onTap: () => selectContainerOne(7),
            isSelected: selectedIndexOne == 7,
          ),
          FaramEveryone(selectedNumber: 1,
            // width: 120,
            text: 'مراكز اسنان',
            imagePath: 'assets/images/الاسنان.png',
            onTap: () => selectContainerOne(6),
            isSelected: selectedIndexOne == 6,
          ),
          FaramEveryone(selectedNumber: 2,
            // width: 150,
            text: 'استشارة عن بعد',
            imagePath: 'assets/images/الاستشتاره.png',
            onTap: () => selectContainerOne(5),
            isSelected: selectedIndexOne == 5,
          ),
          FaramEveryone(selectedNumber: 3,
            // width: 150,
            text: 'خدمات رعاية منزلية',
            imagePath: 'assets/images/الاسنان.png',
            onTap: () => selectContainerOne(4),
            isSelected: selectedIndexOne == 4,
          ),
          FaramEveryone(selectedNumber: 4,
            //  width: 100,
            text: 'مختبارات',
            imagePath: 'assets/images/رعايه منزل.png',
            onTap: () => selectContainerOne(3),
            isSelected: selectedIndexOne == 3,
          ),
          FaramEveryone(selectedNumber: 5,
            text: 'مستشفيات',
            imagePath: 'assets/images/Group 906.png',
            onTap: () => selectContainerOne(2),
            isSelected: selectedIndexOne == 2,
          ),
          FaramEveryone(selectedNumber: 6,
            text: 'اطباء',
            imagePath: 'assets/images/الاسنان.png',
            onTap: () => selectContainerOne(1),
            isSelected: selectedIndexOne == 1,
          ),
          FaramEveryone(selectedNumber: 7,
            text: 'الكل',
            onTap: () => selectContainerOne(0),
            isSelected: selectedIndexOne == 0,
          ),
        ],
      ),
    );
    List<FaramEveryone> filterListOne = [
      FaramEveryone(
        width: 150,
        text: 'مراكز اشعة',
        imagePath: 'assets/images/مراكز الاشعات.png',
        onTap: () => selectContainerOne(3),
        isSelected: selectedIndexOne == 3,
      ),
      FaramEveryone(
        width: 120,
        text: 'مراكز اسنان',
        imagePath: 'assets/images/الاسنان.png',
        onTap: () => selectContainerOne(6),
        isSelected: selectedIndexOne == 6,
      ),
      FaramEveryone(
        width: 150,
        text: 'استشارة عن بعد',
        imagePath: 'assets/images/الاستشتاره.png',
        onTap: () => selectContainerOne(5),
        isSelected: selectedIndexOne == 5,
      ),
      FaramEveryone(
        width: 150,
        text: 'خدمات رعاية منزلية',
        imagePath: 'assets/images/رعايه منزل.png',
        onTap: () => selectContainerOne(4),
        isSelected: selectedIndexOne == 4,
      ),
      FaramEveryone(
        width: 100,
        text: 'مختبارات',
        imagePath: 'assets/images/مختبرات.png',
        onTap: () => selectContainerOne(3),
        isSelected: selectedIndexOne == 3,
      ),
      FaramEveryone(
        text: 'مستشفيات',
        imagePath: 'assets/images/مستشفيات .jpg',
        onTap: () => selectContainerOne(2),
        isSelected: selectedIndexOne == 2,
      ),
      FaramEveryone(
        text: 'اطباء',
        imagePath: 'assets/images/Group 906.png',
        onTap: () => selectContainerOne(1),
        isSelected: selectedIndexOne == 1,
      ),
      FaramEveryone(
        text: 'الكل',
        onTap: () => selectContainerOne(0),
        isSelected: selectedIndexOne == 0,
      ),
    ];
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
    //return Scaffold();
  }
}
