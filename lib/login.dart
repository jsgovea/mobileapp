import 'package:flutter/material.dart';
import 'auth.dart';
import 'tabBar.dart';
import 'orders.dart';
import 'package:firebase_auth/firebase_auth.dart';


final salmonColor = const Color(0XFFFD6667);

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _LoginPageState();
}



class _LoginPageState extends State<LoginPage> {

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();



String _email;
String _password;


Future<void> signIn() async {
  final formState = _formKey.currentState;
  if(formState.validate()) {
    formState.save();
    try {
    FirebaseUser user =  await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password);
    Navigator.push(context, MaterialPageRoute(builder: (context) => NavBar()));
    } catch(e) {
      print(e);
    }
  }

  
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
            padding: EdgeInsets.all(16.0),
            child: new Form(
              key: _formKey,
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    style: new TextStyle(fontSize: 20, color: Colors.white),
                    decoration: new InputDecoration(
                      labelText: 'Correo', 
                      focusedBorder: new UnderlineInputBorder(
                        borderSide: new BorderSide(
                          color: Colors.white
                        ),
                      ),
                      ),
                    validator:  (value) => value.isEmpty ? 'Debe completar todos los campos' : null,
                    onSaved: (value) => _email = value,              
                  ),
                  new TextFormField(
                    style: new TextStyle(fontSize: 20, color: Colors.white),
                    decoration: new InputDecoration(
                      labelText: 'Contraseña', 
                      focusedBorder: new UnderlineInputBorder(
                        borderSide: new BorderSide(
                          color: Colors.white
                        ),
                      ),
                      ),
                      obscureText: true,
                      validator: (value) {

                      },
                    onSaved: (value) => _password = value,              
                  ),                
                ],
              ),
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
                    onPressed: signIn,
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
