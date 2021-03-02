import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_cloud_backend/feature/test_page_view_model.dart';
import 'package:test_cloud_backend/locator.dart';

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  TestPageViewModel model;

  @override
  void initState() {
    super.initState();
    model = locator<TestPageViewModel>();
    model.onInit();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TestPageViewModel>(
      create: (context) => model,
      child: Consumer<TestPageViewModel>(
        builder: (BuildContext context, TestPageViewModel model, _) {
          return ListView.builder(
            itemCount: model.allUsers.length,
            itemBuilder: (context, index) {
              return Text(model.allUsers[index].name);
            },
          );
        },
      ),
    );
  }
}
