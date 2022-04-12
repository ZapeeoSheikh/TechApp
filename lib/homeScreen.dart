import 'package:flutter/material.dart';
import 'package:tech_app/routes.dart';

import 'color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: MyColor.Background,
        body: Container(
          margin: EdgeInsets.only(
            bottom: 2,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 135,
              ),
              Image(
                image: AssetImage("images/home.png"),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Welcome",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: MyColor.TextColor),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Before moving Forward to Enjoy our Services",
                style: TextStyle(fontSize: 13.3, color: MyColor.TextColor),
              ),
              Text(
                "Please register here first",
                style: TextStyle(fontSize: 13.3, color: MyColor.TextColor),
              ),
              SizedBox(
                height: 135,
              ),
              Container(
                margin: EdgeInsets.only(left: 50, right: 50),
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, routes.signup);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Create Account",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: MyColor.ThemeColor,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.only(left: 50, right: 50),
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, routes.login);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                          color: MyColor.ThemeColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border(),
                  color: MyColor.button.withOpacity(0.3),
                ),
              ),
              SizedBox(
                height: 9,
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    Text(
                        "Terms and condition are patent by the owner of Octocat Limited",
                        style: TextStyle(
                          color: MyColor.ThemeColor,
                          fontSize: 13,
                        )),
                    Text(
                      "@ Muhammad Rameez",
                      style: TextStyle(
                        color: MyColor.ThemeColor,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
