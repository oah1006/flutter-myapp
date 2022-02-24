import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        ), tabBuilder: (context, i) {
          return CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              // Try removing opacity to observe the lack of a blur effect and of sliding content.
              leading: Icon(Icons.list),
              trailing: Icon(Icons.qr_code),
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),

              border: Border(
                  bottom:BorderSide(
                      width: 1,
                      color: CupertinoColors.activeGreen,
                      style: BorderStyle.solid
                  )
              ),

            ),
            child: Container()
          );
        }
    );
  }
}