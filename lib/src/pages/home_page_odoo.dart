import 'package:flutter/material.dart';
/* import 'package:proyecto_odoo/src/providers/menu_users.dart'; */

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';

class HomePageOdoo extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePageOdoo> {
  
    getUsers() async {
    http.Response resp = await http.get('http://10.0.2.2:4000/api/users');
    debugPrint(resp.body);
  }
  @override
  void initState() {
    super.initState();
    getUsers();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
        backgroundColor: Colors.indigo[900],
      ),
/*       body:ListView.builder(

      ), */
    );
  }
}
