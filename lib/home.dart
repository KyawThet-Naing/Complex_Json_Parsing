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
  late bool loading;

  @override
  void initState() {
    loading = false;
    loadJson();
    super.initState();
  }

  Future<void> loadJson() async {
    setState(() => loading = true);
    String jsonData = await rootBundle.loadString("assets/json/exam.json");
    var data = json.decode(jsonData);
    (data['result'] as Map).forEach(
      (key, value) {
        for (var element in (value as List)) {
          dataList.add(ExamModel.fromJson(element));
        }
      },
    );
    setState(() => loading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Bar"),
      ),
      body: loading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: dataList.length,
              itemBuilder: (context, index) => Card(
                    child: ListTile(
                      leading: dataList[index].home!.logo!.isNotEmpty
                          ? Image.network(dataList[index].home!.logo!)
                          : const Text('LOGO'),
                      title: const Text('Name'),
                      subtitle: Text(dataList[index].home!.name!),
                    ),
                  )),
    );
  }
}
