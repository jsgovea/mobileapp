import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';


final salmonColor = const Color(0XFFFD6667);

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}



class _LoginPageState extends State<LoginPage> {

String _meail;
String _password;

void validateAndSave() {

}

  @override
 Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        alignment: Alignment.center,
        decoration: new BoxDecoration(color: salmonColor),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
        // new Text('FoodClub', style: TextStyle(fontSize: 36, color: Colors.white),),
        new DecoratedBox(
          decoration: BoxDecoration(           
            image: DecorationImage(
              image: AssetImage('assets/LogoFoodClub.png'),
              fit: BoxFit.contain,
              alignment: Alignment.center,
            ),
          ),
        ),      
        new Container(
          margin: EdgeInsets.all(50.0),
          alignment: Alignment.center,
          child:          
            new  ClipPath(
              child: Image.asset('assets/LogoFoodClub@3x.png', fit: BoxFit.contain, width: 150),
            ),  
        ),
        new Container(
        padding: EdgeInsets.all(10.0),
        alignment: Alignment.center,
        child: Text('Ahorra tiempo pidiendo desde FoodClub', textAlign: TextAlign.center, style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold, color: Colors.white),), 
        ),

          new Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                    color: Colors.black,
                    width: 1,
                    style: BorderStyle.solid),
              ),
            ),
            padding: const EdgeInsets.only(left: 0.0, right: 10.0),
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Expanded(
                  child: TextField(
                    style: new TextStyle(fontSize: 20, color: Colors.white),
                    obscureText: false,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Correo',
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
               new Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                    color: Colors.black,
                    width: 1,
                    style: BorderStyle.solid),
              ),
            ),
            padding: const EdgeInsets.only(left: 0.0, right: 10.0),
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Expanded(
                  child: TextField(
                    style: new TextStyle(fontSize: 20, color: Colors.white),
                    obscureText: true,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Contraseña',
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
       
        new Container( 
          margin: EdgeInsets.all(40.0),     
          alignment:  Alignment.center,
          child:     
            new RaisedButton(
                    padding: const EdgeInsets.all(15.0),
                    textColor: Colors.white,
                    color: Colors.green,
                    onPressed: () {},
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    child: new Text("Iniciar Sesión", style: TextStyle(fontSize: 20.0,),),
                  ),
        ),
          ],     
        ),
      ), 
    );
  }
}