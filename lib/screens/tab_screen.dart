import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tab_app/models/style_dto.dart';
import 'package:tab_app/screens/tab_one.dart';
import 'package:tab_app/screens/tab_two.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  late Future fetchTabWidgetsFuture;

  Future<StyleDto> _fetchTabWidgets() async {
    var widgetsJsonStr = await rootBundle.loadString('assets/screen_1.json');
    var json = jsonDecode(widgetsJsonStr);
    return StyleDto.fromJson(json);
  }

  @override
  void initState() {
    fetchTabWidgetsFuture = _fetchTabWidgets();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(tabs: [
              Tab(child: Text('Tab 1')),
              Tab(child: Text('Tab 2')),
            ]),
          ),
          body: TabBarView(children: [
            TabOne(fetchFunction: fetchTabWidgetsFuture),
            TabTwo(),
          ]),
        ));
  }
}
