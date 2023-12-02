import 'package:flutter/material.dart';
import 'package:queen_resto/constants.dart';

class ButtonWidget extends StatelessWidget {
  final text;

  const ButtonWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Card(
        color: Colors.transparent,
        elevation: 2,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Constants.auth_button_color,
              borderRadius: BorderRadius.circular(15)),
          child: Center(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                text,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 20,
              ),
              const Icon(
                Icons.forward,
                color: Colors.white,
              )
            ]),
          ),
        ),
      ),
    );
  }
}
