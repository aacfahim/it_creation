import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:it_creation/utils/colors.dart';
import 'package:it_creation/widgets/bottom_appbar.dart';
import 'package:it_creation/widgets/custom_textfield.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        title: Text("Jane D Modric",
            style: TextStyle(color: Colors.black, fontSize: 18)),
        centerTitle: true,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
          child: InkWell(
            onTap: () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => CustomBottomAppBar())),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Color(0xffF8F8FD)),
              child: Icon(Icons.arrow_back_rounded, color: Color(0xff949494)),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 18, left: 8, right: 8, bottom: 6),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 8, top: 6),
                                child: Text(
                                  "Jane D Modric",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.pin_drop, size: 15),
                                  Text("Arena Jaruscica",
                                      style: TextStyle(fontSize: 12))
                                ],
                              )
                            ]),
                        SizedBox(height: 8),
                        CustomTextfield(
                          icon: Icons.person,
                          text: "Surname",
                        ),
                        CustomTextfield(
                          icon: Icons.call,
                          text: "Contact Number",
                        ),
                        CustomTextfield(
                          icon: Icons.home,
                          text: "Address",
                          height: 25,
                        ),
                        CustomTextfield(
                          icon: Icons.timer_rounded,
                          text: "Time",
                        ),
                        CustomTextfield(
                          icon: Icons.arrow_downward,
                          text: "Entered into Contact",
                        ),
                        CustomTextfield(
                          icon: Icons.arrow_downward,
                          text: "Operator",
                        ),
                        CustomTextfield(
                          text: "Comment",
                        ),
                        CustomTextfield(
                          text: "Neighbourhood",
                        ),
                        CustomTextfield(
                          icon: Icons.arrow_downward,
                          text: "Target Daily",
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text("Cancel",
                                  style: TextStyle(color: primaryColor)),
                            ),
                            SizedBox(width: 6),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Save"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: primaryColor,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
