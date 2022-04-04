

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/recruitment_page.dart';
import 'package:cupertino_radio_choice/cupertino_radio_choice.dart';
import 'package:http/http.dart' as http;
import 'package:myapp/upload_file_button.dart';
import 'package:myapp/upload_image_button.dart';


class FormPage extends StatelessWidget {
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
              Flexible(
                child: Text(
                    'Sơ yếu lý lịch: ',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 18,
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                    )
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Flexible(
                  child: FileUpload(),
                  flex: 1,
                  fit: FlexFit.tight,
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
                child: UploadImageButton('Mặt trước'),
                flex: 1,
                fit: FlexFit.tight,
              ),
              SizedBox(
                width: 5,
              ),
              Flexible(
                child: UploadImageButton('Mặt sau'),
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
                child: UploadImageButton('Mặt trước'),
                flex: 1,
                fit: FlexFit.tight,
              ),
              SizedBox(
                width: 5,
              ),
              Flexible(
                child: UploadImageButton('Mặt sau'),
                flex: 1,
                fit: FlexFit.tight,
              )
            ],
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 60, 0, 0)),
          Row(
            children: [
              Flexible(
                child: CupertinoButton(
                  padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                  child: Text(
                      'Tải lại',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      )
                  ),
                  color: CupertinoColors.inactiveGray,
                  onPressed: () {}
                ),
                flex: 1,
                fit: FlexFit.tight,
              ),
              SizedBox(
                width: 5,
              ),
              Flexible(
                  child: CupertinoButton.filled(
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                    child: Text('Nộp đơn'),
                    onPressed: () {}
                  ),
                  flex: 1,
                  fit: FlexFit.tight,
              )
            ],
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 120)),
        ],
      ),
    );
  }
}
