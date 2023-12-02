import 'package:flutter/material.dart';
import 'package:queen_resto/constants.dart';
import 'package:queen_resto/screens/home_screen.dart';
import 'package:queen_resto/screens/register_screen.dart';
import 'package:queen_resto/widgets/button_widget.dart';
import 'package:queen_resto/widgets/input_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                "LOGIN",
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
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
                child: const ButtonWidget(
                  text: "LOGIN",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(color: Colors.white),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterScreen()));
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
                            "SIGN UP",
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
