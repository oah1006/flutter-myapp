

import 'dart:convert';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/alert_dialog.dart';
import 'package:myapp/recruitment_page.dart';
import 'package:cupertino_radio_choice/cupertino_radio_choice.dart';
import 'package:http/http.dart' as http;
import 'package:myapp/upload_file_button.dart';
import 'package:myapp/upload_image_button.dart';


class FormPage extends StatefulWidget {
  static Route<dynamic> route() {
    return CupertinoPageRoute(
      builder: (BuildContext context) {
        return FormPage();
      },
    );
  }
  @override
  FormPageState createState() => new FormPageState();

}

class FormPageState extends State<FormPage> {
  var form = {};
  void setForm(String key, var value) {
    setState(() {
      form[key] = value;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    form['working_time'] = 'fulltime';
  }

  void displayDialog(context, message, [redirect = false]) {
    showDialog(
      context: context,
      builder: (BuildContext context) => new CupertinoAlertDialog(
        title: new Text("Alert"),
        content: new Text(message),
      ),
    );
  }

  Future<http.StreamedResponse> applyRecruitment(context) async {
    print(form);
    var request = http.MultipartRequest(
      'POST',
      Uri.parse('http://45.76.156.50/recruitments/apply'),
      // body: jsonEncode(<String, String>{
      //   'cv': null,
      //   'job_application': null,
      //   'working_time': null,
      //   'id_frontside' : null,
      //   'id_backside': null,
      //   'license_frontside': null,
      //   'license_backside': null,
      // }),
    );
    request.headers['Accept'] = "application/json";
    request.fields['working_time'] = form['working_time'];

    if(form['cv'] != null) {
      request.files.add(await http.MultipartFile.fromPath(
          'cv',
          form['cv']
      ));
    }
    if(form['job_application'] != null) {
      request.files.add(await http.MultipartFile.fromPath(
          'job_application',
          form['job_application']
      ));
    }

    if(form['id_frontside'] != null) {
      request.files.add(await http.MultipartFile.fromPath(
          'id_frontside',
          form['id_frontside']
      ));
    }

    if(form['id_backside'] != null) {
      request.files.add(await http.MultipartFile.fromPath(
          'id_backside',
          form['id_backside']
      ));
    }

    if(form['license_frontside'] != null) {
      request.files.add(await http.MultipartFile.fromPath(
          'license_frontside',
          form['license_frontside']
      ));
    }

    if(form['license_backside'] != null) {
      request.files.add(await http.MultipartFile.fromPath(
          'license_backside',
          form['license_backside']
      ));
    }

    var streamResponse = await request.send();
    var response = await http.Response.fromStream(streamResponse);
    print(response.body);
    if (response.statusCode == 422 || response.statusCode == 401) {
      displayDialog(context, jsonDecode(response.body)['message']);
    } else {
      displayDialog(context, jsonDecode(response.body)['message']);
    }
    return streamResponse;
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
                flex: 1,
                fit: FlexFit.tight,
              ),
              SizedBox(
                width: 5,
              ),
              Flexible(
                  child: FileUpload(name: 'cv', callback: setForm),
                  flex: 1,
                  fit: FlexFit.tight,
              )
            ],
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
          Row(
            children: [
              Flexible(
                child: Text(
                    'Đơn xin việc: ',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 18,
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                    )
                ),
                flex: 1,
                fit: FlexFit.tight,
              ),
              SizedBox(
                width: 5,
              ),
              Flexible(
                child: FileUpload(name: 'job_application', callback: setForm),
                flex: 1,
                fit: FlexFit.tight,
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
              onChange: (selected) {
                setForm('working_time', selected);
              },
              initialKeyValue: 'fulltime'
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
                child: UploadImageButton(label: 'Mặt trước', name: 'id_frontside', callback: setForm),
                flex: 1,
                fit: FlexFit.tight,
              ),
              SizedBox(
                width: 5,
              ),
              Flexible(
                child: UploadImageButton(label: 'Mặt sau', name: 'id_backside', callback: setForm),
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
                child: UploadImageButton(label: 'Mặt trước', name: 'license_frontside', callback: setForm),
                flex: 1,
                fit: FlexFit.tight,
              ),
              SizedBox(
                width: 5,
              ),
              Flexible(
                child: UploadImageButton(label: 'Mặt sau', name: 'license_backside', callback: setForm),
                flex: 1,
                fit: FlexFit.tight,
              )
            ],
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 60, 0, 0)),
          Row(
            children: [
              Flexible(
                  child: CupertinoButton.filled(
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                    child: Text('Nộp đơn'),
                    onPressed: () {
                      applyRecruitment(context);
                    }
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
