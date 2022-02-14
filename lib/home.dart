import 'dart:convert';

import 'package:exam/exam_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<ExamModel> dataList = [];

  @override
  void initState() {
    loadJson();
    super.initState();
  }

  Future<void> loadJson() async {
    String jsonData = await rootBundle.loadString("assets/json/exam.json");
    var data = json.decode(jsonData);
    (data['result'] as Map).forEach(
      (key, value) {
        for (var element in (value as List)) {
          dataList.add(ExamModel.fromJson(element));
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(
              dataList.length,
              (index) => Container(
                  width: double.infinity,
                  height: 40,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Real name -> ${dataList[index].home!.realName!}',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
