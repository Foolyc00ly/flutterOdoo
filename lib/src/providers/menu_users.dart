import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';

class _MenuUsers {
  _MenuProvider() {
    getUsers();
  }

/*   Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(resp);
    this.opciones = dataMap['rutas'];
    return this.opciones;
  } */
  getUsers() async {
    http.Response resp = await http.get('http://10.0.2.2:400/api/users');
    debugPrint(resp.body);
  }
}

final menuUser = new _MenuUsers();
