import 'package:flutter/material.dart';
import 'package:queen_resto/constants.dart';
import 'package:queen_resto/screens/login_screen.dart';
import 'package:queen_resto/widgets/button_widget.dart';
import 'package:queen_resto/widgets/input_widget.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.auth_background_color,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Constants.logo_url),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Sign Up",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              InputWidget(
                  placeholder: "Numéro de téléphone", icon: Icons.phone),
              const SizedBox(
                height: 20,
              ),
              InputWidget(placeholder: "Mot de passe", icon: Icons.lock),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {},
                child: const ButtonWidget(
                  text: "SIGN UP",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "SIGN IN",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.forward,
                            color: Colors.white,
                          )
                        ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
