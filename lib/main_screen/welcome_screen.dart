import 'package:flutter/material.dart';
import 'package:multi_store_app/widgets/yellow_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/inapp/bg.jpg'), fit: BoxFit.cover)),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
            child: Column(children: [
          const Text(
            'Welcome',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 120,
            width: 200,
            child: Image(image: AssetImage('images/inapp/logo_talisya.png')),
          ),
          const Text(
            'Skincare Store',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.pink[100],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomLeft: Radius.circular(50))),
            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                "Suplliers",
                style: TextStyle(
                    color: Colors.pink,
                    fontSize: 26,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
              height: 60,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(50))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(image: AssetImage('images/inapp/logo_talisya.png')),
                  YellowButton(label: "Login", onPressed: () {}, width: 0.25),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: YellowButton(
                        label: "Register", onPressed: () {}, width: 0.25),
                  )
                ],
              )),
          Container(
              height: 60,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: YellowButton(
                        label: "Login", onPressed: () {}, width: 0.25),
                  ),
                  YellowButton(
                      label: "Register", onPressed: () {}, width: 0.25),
                  const Image(
                      image: AssetImage('images/inapp/logo_talisya.png')),
                ],
              )),
        ])),
      ),
    );
  }
}
