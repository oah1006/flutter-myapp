import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/map_screen.dart';

import 'network_request.dart';


class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search),
              label: 'Tra cứu',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.tag),
              label: 'Khuyến mãi',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings_solid),
              label: 'Cài đặt',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person),
              label: 'Ứng tuyển',
            ),
          ],
        ), tabBuilder: (BuildContext context, int index) {
            switch (index) {
              case 0:
                return CupertinoTabView(
                  builder: (BuildContext context) {
                    return MapSceen();
                  },
              );
              case 1:
                return CupertinoTabView(
                  builder: (BuildContext context) {
                    return DataFromAPI();
                  },
                );
              case 2:
                return CupertinoTabView(
                  builder: (BuildContext context) {
                    return Center(
                        child: Text("Tra cứu")
                    );
                  },
                );
              case 3:
                return CupertinoTabView(
                  builder: (BuildContext context) {
                    return Center(
                        child: Text("Tra cứu")
                    );
                  },
                );
              case 4:
                return CupertinoTabView(
                  builder: (BuildContext context) {
                    return Center(
                        child: Text("Tra cứu")
                    );
                  },
                );
              default:
                return CupertinoTabView(
                  builder: (BuildContext context) {
                    return Center(
                        child: Text("Error")
                    );
                  },
                );
            }
        }
    );
  }
}
