import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecruitmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context)  {
    return CupertinoPageScaffold(
        child: Column(
          children: <Widget> [
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(220, 100, 0, 0),
                    ),
                    CupertinoButton(
                      onPressed: () {},
                      child: const Icon(CupertinoIcons.car_detailed, size: 80.0, color: Colors.blueAccent)
                    ),
                    Text(
                        "Giới thiệu",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                            fontSize: 18,
                          color: Colors.black87,
                          fontWeight: FontWeight.w600,
                        )
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(180, 100, 0, 0),
                    ),
                    CupertinoButton(
                        onPressed: () {},
                        child: const Icon(CupertinoIcons.book_solid, size: 80.0, color: Colors.blueAccent)
                    ),
                    Text(
                        "Hướng dẫn",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 18,
                          color: Colors.black87,
                          fontWeight: FontWeight.w600,
                        )
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(220, 20, 0, 0),
                    ),
                    CupertinoButton(
                        onPressed: () {},
                        child: const Icon(CupertinoIcons.envelope_fill, size: 80.0, color: Colors.blueAccent)
                    ),
                    Text(
                        "Mẫu đơn",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 18,
                          color: Colors.black87,
                          fontWeight: FontWeight.w600,
                        )
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(180, 20, 0, 0),
                    ),
                    CupertinoButton(
                        onPressed: () {},
                        child: const Icon(CupertinoIcons.person_alt_circle_fill, size: 80.0, color: Colors.blueAccent)
                    ),
                    Text(
                        "Kiểm tra",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 18,
                          color: Colors.black87,
                          fontWeight: FontWeight.w600,
                        )
                    ),
                    Text(
                        "Thông tin",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 18,
                          color: Colors.black87,
                          fontWeight: FontWeight.w600,
                        )
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(410, 20, 0, 0),
                    ),
                    CupertinoButton(
                        onPressed: () {},
                        child: const Icon(CupertinoIcons.headphones, size: 80.0, color: Colors.blueAccent)
                    ),
                    Text(
                        "Tư vấn",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 18,
                          color: Colors.black87,
                          fontWeight: FontWeight.w600,
                        )
                    ),
                  ],
                ),
              ],
            ),

          ]
        )
    );
  }
}