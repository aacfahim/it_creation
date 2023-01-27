import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:it_creation/widgets/progress_bar.dart';

class ProressList extends StatefulWidget {
  const ProressList({super.key});

  @override
  State<ProressList> createState() => _ProressListState();
}

class _ProressListState extends State<ProressList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          height: 169.74,
          width: 154.34,
          decoration: BoxDecoration(
              color: Color(0xffE9ECF3), borderRadius: BorderRadius.circular(5)),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(right: 8.0, top: 2.0, left: 0),
                    child: Icon(Icons.more_vert),
                  )),
              Column(
                children: [ProgressBar(), SizedBox(height: 5), Text("Example")],
              ),
            ],
          ),
        ),
        SizedBox(width: 10),
        Container(
          height: 169.74,
          width: 154.34,
          decoration: BoxDecoration(
              color: Color(0xffE9ECF3), borderRadius: BorderRadius.circular(5)),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 2.0),
                    child: Icon(Icons.more_vert),
                  )),
              Column(
                children: [ProgressBar(), SizedBox(height: 5), Text("Example")],
              ),
            ],
          ),
        ),
        SizedBox(width: 10),
        Container(
          height: 169.74,
          width: 154.34,
          decoration: BoxDecoration(
              color: Color(0xffE9ECF3), borderRadius: BorderRadius.circular(5)),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 2.0),
                    child: Icon(Icons.more_vert),
                  )),
              Column(
                children: [ProgressBar(), SizedBox(height: 5), Text("Example")],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
