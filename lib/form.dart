import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/recruitment_page.dart';
import 'package:cupertino_radio_choice/cupertino_radio_choice.dart';
import 'package:http/http.dart' as http;


class FormPage extends StatelessWidget {
  void chosseImage() {
    print(1);
  }

  static Route<dynamic> route() {
    return CupertinoPageRoute(
      builder: (BuildContext context) {
        return FormPage();
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          leading: CupertinoNavigationBarBackButton(
            onPressed: () => Navigator.of(context).push(RecruitmentPage.route()),
          )
      ),
      child: ListView(
        padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
        children: <Widget>[
          Row(
            children: [
              Text(
                'Sơ yếu lý lịch: ',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 18,
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                )
              ),
              Spacer(),
              CupertinoButton.filled(
                  child: Text('Upload'),
                  onPressed: () {}
              )
            ],
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
          Row(
            children: [
              Text(
                  'Hạnh kiểm: ',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 18,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                  )
              ),
              Spacer(),
              CupertinoButton.filled(
                  child: Text('Upload'),
                  onPressed: () {}
              )
            ],
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
          Row(
            children: [
              Text(
                  'Đơn xin việc: ',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 18,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                  )
              ),
              Spacer(),
              CupertinoButton.filled(
                  child: Text('Upload'),
                  onPressed: () {}
              )
            ],
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
          Text(
              'Thời gian làm việc: ',
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.w600,
              )
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
          CupertinoRadioChoice(
              choices: {'fulltime' : 'Fulltime', 'unstable' : 'Không có định',},
              onChange: (selectedGender) {},
              initialKeyValue: 'male'
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
          Text(
              'Tải CMND/Căn cước: ',
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.w600,
              )
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
          Row(
            children: [
              Flexible(
                child: CupertinoButton.filled(
                    child: Text('Mặt trước'),
                    onPressed: () {},
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                ),
                flex: 1,
                fit: FlexFit.tight,
              ),
              SizedBox(
                width: 5,
              ),
              Flexible(
                child: CupertinoButton.filled(
                    child: Text('Mặt sau'),
                    onPressed: () {},
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                ),
                flex: 1,
                fit: FlexFit.tight,
              )
            ],
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
          Text(
              'Bằng lái xe: ',
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.w600,
              )
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
          Row(
            children: [
              Flexible(
                child: CupertinoButton.filled(
                  child: Text('Mặt trước'),
                  onPressed: () {},
                  padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                ),
                flex: 1,
                fit: FlexFit.tight,
              ),
              SizedBox(
                width: 5,
              ),
              Flexible(
                child: CupertinoButton.filled(
                  child: Text('Mặt sau'),
                  onPressed: () {},
                  padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                ),
                flex: 1,
                fit: FlexFit.tight,
              )
            ],
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 60, 0, 0)),
          Row(
            children: [
              CupertinoButton(
                  child: Text(
                      'Tải lại',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    )
                  ),
                  color: CupertinoColors.inactiveGray,
                  onPressed: () {}
              ),
              Spacer(),
              CupertinoButton.filled(
                  child: Text('Nộp đơn'),
                  onPressed: () {}
              )
            ],
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 120)),
        ],
      ),
    );
  }
}
