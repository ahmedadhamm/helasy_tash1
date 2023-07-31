import 'package:flutter/material.dart';

class FaramEveryone extends StatelessWidget {
  String text;
  double width;
  Color color;
  Color textColor;
  int selectedNumber;
  final bool isSelected;
  String? imagePath;

  Function()? onTap;

  FaramEveryone({
    super.key,
    required this.text,
    this.imagePath,
    this.width = 160,
    this.color = Colors.white,
    this.textColor = Colors.black,
    this.selectedNumber = 0,
    this.onTap,
    this.isSelected = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 7),
        height: 60,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: isSelected ? Colors.blue : Colors.white,
            border: Border.all(color: Colors.grey.shade300)
            // Color(0xff548CFF)
            ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: 5,
            ),
            imagePath != null
                ? Image.asset(
                    imagePath!,
                    height: 35,
                  )
                : Container(
                    width: 0,
                  ),
            Text(
              text,
              style: TextStyle(
                fontSize: imagePath == null ? 22 : 14,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
          ],
        ),
      ),
    );
  }
}
