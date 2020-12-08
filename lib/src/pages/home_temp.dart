import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final estiloTexto = new TextStyle(fontSize: 25);
  final opciones = ['Mi Muñequita', 'Mi tesoro', 'Mi amor', 'Mi Mekarecita', 'Mi esposa'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('componentes Temp', style: this.estiloTexto),
      ),
      body: ListView(
        //children: _crearItems(),
        children: _crearItemsCorta(),
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();
    for (String opt in this.opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista..add(tempWidget)..add(Divider());
    }
    return lista;
  }
  List<Widget> _crearItemsCorta(){
    return this.opciones.map((item)=>Column(
      children:<Widget>[
        ListTile(
          title:Text(item+'♥',style:this.estiloTexto),
          subtitle:Text('Cualquier cosa'),
          leading:Icon(Icons.account_balance_wallet),
          trailing:Icon(Icons.keyboard_arrow_right),
          onTap:(){},
        ),
        Divider(),
      ],
    )).toList();
    
  }
}
