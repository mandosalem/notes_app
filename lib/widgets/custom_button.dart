import 'package:flutter/material.dart';
import 'package:flutter_module_3/widgets/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: kPrimaryColor,
      ),
      child: const Center(
        child: Text(
          'add',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}