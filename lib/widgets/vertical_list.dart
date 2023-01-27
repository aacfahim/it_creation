import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:it_creation/utils/colors.dart';

class VerticalList extends StatelessWidget {
  const VerticalList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .218,
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: 15,
        itemBuilder: (context, index) {
          return ListTile(
            title: Row(children: [
              Container(
                  height: 35.37,
                  width: 4,
                  color: primaryColor,
                  child: Container()),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Elegant Mansion",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text("10.00 am - 11.00 am", style: TextStyle(fontSize: 12)),
                ],
              )
            ]),
            trailing: Icon(Icons.more_vert),
          );
        },
        separatorBuilder: (context, index) =>
            Divider(thickness: 1.0, indent: 2, endIndent: 4),
      ),
    );
  }
}
