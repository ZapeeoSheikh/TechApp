import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  static final Color mycolour = Color(0xFF151515);
  static const bottomContainerHeight = 70.0;
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
                        childCard: MyCard(
                          icon: Icon(
                            FontAwesomeIcons.mars,
                            size: 50,
                          ),
                          tag: 'MALE',
                        ),
                        colour: mycolour,
                      ),
                    ),
                    Expanded(
                      child: MyContainer(
                        childCard: MyCard(
                          icon: Icon(
                            FontAwesomeIcons.venusMars,
                            size: 50,
                          ),
                          tag: 'FEMALE',
                        ),
                        colour: mycolour,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: MyContainer(
                  childCard: Container(),
                  colour: mycolour,
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: increment(
                        mycolour: mycolour,
                        iicon: Icon(
                          FontAwesomeIcons.add,
                          size: 50,
                        ),
                      ),
                    ),
                    Expanded(
                      child: increment(
                        mycolour: mycolour,
                        iicon: Icon(
                          FontAwesomeIcons.minus,
                          size: 50,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                child:
                    Text("Calculate Your BMI", style: TextStyle(fontSize: 20)),
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: bottomContainerHeight,
                color: Color(0xFFEB1555),
              )
            ],
          )),
    );
  }
}

class increment extends StatelessWidget {
  const increment({
    required this.mycolour,
    required this.iicon,
  });

  final Color mycolour;
  final Icon iicon;

  @override
  Widget build(BuildContext context) {
    return MyContainer(
      childCard: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyCard(
            icon: iicon,
            tag: '',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add_circle_outline,
                size: 30,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "0",
                style: TextStyle(fontSize: 50, color: Color(0xFF8D8E98)),
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.remove_circle_outline,
                size: 30,
              ),
            ],
          )
        ],
      ),
      colour: mycolour,
    );
  }
}

class MyCard extends StatelessWidget {
  MyCard({required this.icon, required this.tag});

  final Icon icon;
  final String tag;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        icon,
        SizedBox(
          height: 15,
        ),
        Text(
          tag,
          style: TextStyle(fontSize: 18, color: Color(0xFF8D8E98)),
        ),
      ],
    );
  }
}

class MyContainer extends StatelessWidget {
  MyContainer({required this.colour, required this.childCard});
  final Color colour;
  final Widget childCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childCard,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),
    );
  }
}
