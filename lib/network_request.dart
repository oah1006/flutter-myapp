import 'dart:convert';
import 'package:cupertino_listview/cupertino_listview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myapp/users.dart';

class DataFromAPI extends StatefulWidget {
  @override
  _DataFromAPIState createState() => _DataFromAPIState();
}

class _DataFromAPIState extends State<DataFromAPI> {
   Future getUserData() async {
    var response = await http.get(Uri.https('jsonplaceholder.typicode.com', 'users'));
    var jsonData = jsonDecode(response.body);
    List<User> users = [];

    for(var item in jsonData) {
      User user = User(item['name'], item['email'], item['username']);
      users.add(user);
    }

    print(users.length);
    return users;
  }
   int _count = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: Card(
            child: FutureBuilder(
              future: getUserData(),
              builder: (context, AsyncSnapshot snapshot) {
                if(snapshot.data == null) {
                  return Container(
                      child: Center(
                          child: Text('Loading...')
                      )
                  );
                } else return ListView.builder(
                    itemCount: snapshot.data?.length,
                    itemBuilder: (context, i) {
                      return ListTile(
                        title: Text(snapshot.data[i].name),
                        subtitle: Text(snapshot.data[i].userName),
                        trailing: Text(snapshot.data[i].email),
                      );
                    }
                );
              }
            )
        )
    );
  }
}