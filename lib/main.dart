import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttershare/pages/home.dart';

void main() {
  Firestore.instance.settings(timestampsInSnapshotsEnabled: true).then((value) => {
    print('Timestamps enabled in snapshots\n')
  }, onError: () {
        print('Error enabling timestamps in snapshots\n');
      });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HomayounSocial',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFd81b60),
        accentColor: Color(0xFF7bb241),
      ),
      home: Home(),
    );
  }
}
