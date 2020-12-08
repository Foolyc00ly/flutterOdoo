import 'package:proyecto_odoo/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_odoo/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  final estiloTexto = new TextStyle(
      fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blue);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
        actions: <Widget>[

        ],
      ),
      body: _lista(),
      drawer: Drawer(),
      endDrawer: Drawer(),
      backgroundColor: Colors.white30,
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {

        return ListView(
          children: _listaItems(snapshot.data),
        );
      },
    );

  }

  List<Widget> _listaItems(List<dynamic> data) {
    final List<Widget> opciones=[];
    data.forEach((opt){
      final widgetTemp=ListTile(
        title:Text(opt['texto'],style:this.estiloTexto),
        leading:getIcon(opt['icon']),
        trailing:Icon(Icons.keyboard_arrow_right, color:Colors.blue),
        onTap:(){},
      );
      opciones..add(widgetTemp)..add(Divider());
    });
    return opciones;
  }
}
