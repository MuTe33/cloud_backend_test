import 'package:flutter/material.dart';
import 'package:test_cloud_backend/feature/test_page.dart';
import 'package:test_cloud_backend/locator.dart';

void main() {
  initSyncDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TestPage(),
    );
  }
}
