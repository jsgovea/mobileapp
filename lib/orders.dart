import 'package:flutter/material.dart';

class OrdersPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
      // TODO: implement createState
      return OrdersPageState();
    }
}

class OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25.0),
      child: Text('Página de ordenes', style: TextStyle(fontSize: 36.0),), 
    );
  }
}