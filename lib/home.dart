import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'GetApiData.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List<GetApiData>? apiList;

  @override
  void initState() {
    super.initState();
    getApiData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Information in API'),
      ),
      body: Column(
        children:
        [if (apiList !=null)
          getList()],
      ),
    );
  }

  Widget getList() {
    return Expanded(
      child: ListView.builder(
        itemCount: apiList!.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 5,
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(5, 10, 0, 10),
                  child: Column(
                    children: [
                      Text("${apiList![index].domains}"),
                      Text("${apiList![index].stateProvince}"),
                      Text("${apiList![index].country}"),
                      Text("${apiList![index].alphaTwoCode}"),
                      Text("${apiList![index].webPages}"),
                      Text("${apiList![index].name}"),
                    ],
                  )
                ),
              )
            ],
          );
        },
      ),
    );
  }

  Future<void> getApiData() async {
    String url = "http://universities.hipolabs.com/search?country=India";

    var result = await http.get(Uri.parse(url));
    apiList = jsonDecode(result.body)
        .map((item) => GetApiData.fromJson(item))
        .toList()
        .cast<GetApiData>();

    setState(() {

    });
  }
}
