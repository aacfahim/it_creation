import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DashboardUpperList extends StatefulWidget {
  const DashboardUpperList({super.key});

  @override
  State<DashboardUpperList> createState() => _DashboardUpperListState();
}

class _DashboardUpperListState extends State<DashboardUpperList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            clipBehavior: Clip.hardEdge,
            width: 156,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: Color(0xffBFCCFF),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, bottom: 10),
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Icon(Icons.phone),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Get in touch today",
                              style: TextStyle(fontSize: 12)),
                          Text(
                            "10",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )
                        ],
                      ),
                    ],
                  ),
                  Positioned(
                    left: 95,
                    bottom: 65,
                    child: Container(
                      height: 70,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Color(0xffA2C1FF),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 85,
                    bottom: 65,
                    child: Container(
                      height: 9,
                      width: 9,
                      decoration: BoxDecoration(
                        color: Color(0xffA2C1FF),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 108,
                    bottom: 10,
                    child: Container(
                      child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Icon(
                            Icons.arrow_right_alt_sharp,
                            color: Colors.grey,
                            size: 15,
                          )),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(width: 10),
        itemCount: 10);
  }
}
