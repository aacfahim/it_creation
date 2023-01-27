import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:it_creation/utils/colors.dart';
import 'package:it_creation/widgets/bottom_appbar.dart';
import 'package:toggle_switch/toggle_switch.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topRight,
                child: ToggleSwitch(
                  minWidth: 55.0,
                  minHeight: 35,
                  cornerRadius: 20.0,
                  activeBgColors: [
                    [primaryColor],
                    [primaryColor],
                  ],
                  activeBorders: [Border.all(color: Colors.white, width: 2.0)],
                  activeFgColor: Colors.white,
                  inactiveBgColor: Colors.white,
                  inactiveFgColor: Colors.black,
                  initialLabelIndex: 1,
                  totalSwitches: 2,
                  labels: ['Cro', 'Eng'],
                  radiusStyle: true,
                  borderColor: [
                    Color(0xffC2C2C2),
                  ],
                  borderWidth: 0.6,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "IT",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                ),
                Text(
                  " CReaction",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                      fontSize: 30),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  Text("HELLO SIGN IN",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("User ID"),
                      SizedBox(height: 6),
                      TextField(
                        decoration: InputDecoration(
                          alignLabelWithHint: false,
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: primaryColor, width: 2),
                          ),
                          hintText: 'Emp. User Id',
                          suffixIcon:
                              Icon(Icons.person_rounded, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Password"),
                      SizedBox(height: 6),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: primaryColor, width: 2),
                          ),
                          focusColor: primaryColor,
                          hintText: '●●●●●●●●',
                          suffixIcon:
                              Icon(Icons.visibility, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.check_box_outlined),
                            SizedBox(width: 4),
                            Text("Remember me",
                                style: TextStyle(color: primaryColor))
                          ],
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forgot password?",
                              style: TextStyle(color: primaryColor),
                            ))
                      ]),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CustomBottomAppBar()));
                    },
                    child: Text("SIGN IN"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      minimumSize: Size(double.infinity, 50.0),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: primaryColor),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
