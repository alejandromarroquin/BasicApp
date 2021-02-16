import 'package:flutter/material.dart';
import 'home.dart';
import 'view1.dart';
import 'view2.dart';

class BottomNav extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return _BottomNav();

    throw UnimplementedError();
  }

}

class _BottomNav extends State<BottomNav>{
  int indexTap=0;
  final List<Widget> widgetsChildren=[
    Home(),
    View1(),
    View2()
  ];

  void onTapTapped(int index){
    setState(() {
      indexTap=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text("Cascaron"),
      ),
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.cyan
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTap,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.circle),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.circle),
              title: Text(""),
            )
          ],
        ),
      ),
    );

    throw UnimplementedError();
  }

}