import 'package:flutter/material.dart';
import 'package:queen_resto/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.background,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Row(
                children: [
                  Text(
                    "MENU",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Recherche...",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  filled: true,
                  fillColor: Color(0XFFD9D9D9),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).width / 2.5,
                decoration: BoxDecoration(
                    color: const Color(0XFFFF9A62),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Column(children: [
                      const Text(
                        "Promotion",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: const Center(
                          child: Text(
                            "Commander",
                            style: TextStyle(color: Colors.redAccent),
                          ),
                        ),
                      )
                    ]),
                    const Spacer(),
                    Image.asset("assets/images/burger.png"),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "Voir plus",
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 6,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                  ),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(10),
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image:
                                        AssetImage("assets/images/burger.jpg")),
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Produits",
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Produits",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 9,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.all(20),
                      width: MediaQuery.sizeOf(context).width,
                      height: MediaQuery.sizeOf(context).height / 4,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(12)),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
