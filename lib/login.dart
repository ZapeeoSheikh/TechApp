import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
          body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    colour: Color(0xFF151515),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    colour: Color(0xFF151515),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyContainer(
              colour: Color(0xFF151515),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    colour: Color(0xFF151515),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    colour: Color(0xFF151515),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

class MyContainer extends StatelessWidget {
  MyContainer({required this.colour});
  Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),
    );
  }
}
