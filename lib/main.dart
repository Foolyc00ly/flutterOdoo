
import 'package:flutter/material.dart';
import 'package:proyecto_odoo/src/pages/home_page_odoo.dart';
/* import 'package:proyecto_odoo/src/pages/home_page.dart'; */

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner:false,
      home: /* HomePage() */HomePageOdoo()
    );
  }
}