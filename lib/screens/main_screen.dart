/*
 * flutter_atomic_design
 * main_screen.dart
 * Created by Cong Fandi on 12/9/2020
 * email : congfandi@gmail.com
 * site : https://thengoding.com
 * Copyright © 2020 Cong Fandi. All rights reserved.
 *
 */

import 'package:flutter/material.dart';
import 'package:flutter_atomic_design/database/db_helper.dart';
import 'package:flutter_atomic_design/database/queries/country_query.dart';
import 'package:flutter_atomic_design/models/country.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final DbHelper _helper = new DbHelper();

  @override
  void initState() {
    super.initState();
    // _helper.openDB();
    // _helper.insert(CountryQuery.TABLE_NAME, {"NAME":"Singapura"});
    _helper.getData(CountryQuery.TABLE_NAME).then((value) {
      value.forEach((element) {
        Country country = Country.fromJson(element);
        print(country.toJson());
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SQFLITE Demo"),
      ),
    );
  }
}
