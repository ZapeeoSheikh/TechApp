import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  static final Color mycolour = Color(0xFF151515);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "BMI Calculator",
            ),
            centerTitle: true,
            backgroundColor: Color(0xFF303030),
            elevation: 0,
          ),
          body: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: MyContainer(
                        colour: mycolour,
                      ),
                    ),
                    Expanded(
                      child: MyContainer(
                        colour: mycolour,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: MyContainer(
                  colour: mycolour,
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: MyContainer(
                        colour: mycolour,
                      ),
                    ),
                    Expanded(
                      child: MyContainer(
                        colour: mycolour,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: 70.0,
                color: Color(0xFFEB1555),
              )
            ],
          )),
    );
  }
}

class MyContainer extends StatelessWidget {
  MyContainer({required this.colour});
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),
    );
  }
}
