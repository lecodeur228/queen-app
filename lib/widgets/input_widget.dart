import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final String placeholder;
  final IconData icon;
   InputWidget({super.key, required this.placeholder, required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:  InputDecoration(
        hintText: placeholder,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }
}
