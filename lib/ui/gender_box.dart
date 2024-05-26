import 'package:flutter/material.dart';

class GenderBox extends StatelessWidget {
  final String gender;
  final bool isSelected;
  final VoidCallback onTap;

  const GenderBox({
    Key? key,
    required this.gender,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(5),
        height: 200,
        decoration: BoxDecoration(
          color: isSelected ? Colors.lightGreen[300] : Colors.grey[350],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            gender,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: isSelected ? Colors.black : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
