import 'package:flutter/material.dart';
import 'package:it_creation/screens/dashboard_screen.dart';
import 'package:it_creation/screens/form_screen.dart';
import 'package:it_creation/utils/colors.dart';

class CustomBottomAppBar extends StatefulWidget {
  @override
  _CustomBottomAppBarState createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  PageController _pages = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          setState(() {
            _pages.jumpToPage(2);
          });
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomAppBar(
          color: Colors.white,
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.home_rounded,
                    size: 30, color: _pages == 0 ? primaryColor : Colors.black),
                onPressed: () {
                  setState(() {
                    _pages.jumpToPage(0);
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.checklist_outlined,
                    size: 30, color: _pages == 1 ? primaryColor : Colors.black),
                onPressed: () {
                  setState(() {
                    _pages.jumpToPage(1);
                  });
                },
              ),
              SizedBox(width: 20),
              IconButton(
                icon: Icon(Icons.notifications_active,
                    size: 30, color: _pages == 2 ? primaryColor : Colors.black),
                onPressed: () {
                  setState(() {
                    _pages.jumpToPage(3);
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.menu_rounded,
                    size: 30, color: _pages == 3 ? primaryColor : Colors.black),
                onPressed: () {
                  setState(() {
                    _pages.jumpToPage(4);
                  });
                },
              ),
            ],
          ),
        ),
      ),
      body: PageView(
        controller: _pages,
        children: [
          Dashboard(),
          Center(
            child: Container(
              child: Text('Page 2'),
            ),
          ),
          FormScreen(),
          Center(
            child: Container(
              child: Text('Page 4'),
            ),
          ),
          Center(
            child: Container(
              child: Text('Page 5'),
            ),
          )
        ],
        physics: NeverScrollableScrollPhysics(),
      ),
    );
  }
}
