import 'package:flutter/material.dart';

class CoustomOther extends StatelessWidget {
  CoustomOther(
      {required this.text, required this.onTap, this.isSelected = true});

  final String text;
  final Function() onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          const SizedBox(
            width: 5,
          ),
          Container(
            height: 40,
            child: const VerticalDivider(
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            decoration: BoxDecoration(
              color: isSelected ? Colors.blue : Colors.white,
            ),
            width: 80,
            height: 40,
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                    color: isSelected ? Colors.white : Colors.black,
                    fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}