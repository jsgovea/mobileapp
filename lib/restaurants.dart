import 'package:flutter/material.dart';

class RestaurantsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
      // TODO: implement createState
      return RestaurantsPageState();
    }
}

class RestaurantsPageState extends State<RestaurantsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25.0),
      child: Text('Página de restaurantes', style: TextStyle(fontSize: 36.0),),
    );
  }
}