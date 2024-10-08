import 'package:flutter/material.dart';
import 'package:flutter_module_3/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon, this.noPressed, required Null Function() onPressed});
final String title;
final IconData icon;
final void Function()? noPressed;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
        const Spacer(),
        CustomIcon(icon: icon, onPressed: noPressed,)
      ],
    );
  }
}
