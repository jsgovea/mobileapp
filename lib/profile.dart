import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
      // TODO: implement createState
      return ProfilePageState();
    }
}

class ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25.0),
      child: Text('Página del perfil', style: TextStyle(fontSize: 36.0),),
    );
  }
}