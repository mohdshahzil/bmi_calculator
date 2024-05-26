import 'package:bmi_calculator/ui/gender_box.dart';
import 'package:bmi_calculator/ui/height_box.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _selectedGender = "Male";

  void _onGenderTap(String gender) {
    setState(() {
      if (_selectedGender == gender) {
        _selectedGender = ''; // Deselect if already selected
      } else {
        _selectedGender = gender;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Fill in your details!',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: GenderBox(
                    gender: "Male",
                    isSelected: _selectedGender == "Male",
                    onTap: () => _onGenderTap("Male"),
                  ),
                ),
                Expanded(
                  child: GenderBox(
                    gender: "Female",
                    isSelected: _selectedGender == "Female",
                    onTap: () => _onGenderTap("Female"),
                  ),
                ),
              ],
            ),
            HeightBox(),
          ],
        ),
      ),
    );
  }
}
