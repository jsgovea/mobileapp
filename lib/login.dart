import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'auth.dart';

final salmonColor = const Color(0XFFFD6667);

class LoginPage extends StatefulWidget {

  LoginPage({this.auth});
  final BaseAuth auth;

  @override
  State<StatefulWidget> createState() => new _LoginPageState();
}



class _LoginPageState extends State<LoginPage> {
final formKey = new GlobalKey<FormState>();



String _email;
String _password;
bool _validate = false;


bool validateAndSave() {
  final form = formKey.currentState;
  if(form.validate()) {
    form.save();
    return true;
  } else {
    return false;
  }
}

void validateAndSubmit() async {
  if (validateAndSave()) {
    try {
      FirebaseUser user = await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password);
      print('Sign in: ${user.uid}');
    } catch (e) {
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
              key: formKey,
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
                    validator: (value) => value.isEmpty ? 'Debe completar todos los campos' : null,
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
                    onPressed: validateAndSubmit,
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





        //         new Container( 
        //   margin: EdgeInsets.all(40.0),     
        //   alignment:  Alignment.center,
        //   child:     
        //     new RaisedButton(
        //             padding: const EdgeInsets.all(15.0),
        //             textColor: Colors.white,
        //             color: Colors.green,
        //             onPressed: validateAndSave,
        //             shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
        //             child: new Text("Iniciar Sesión", style: TextStyle(fontSize: 20.0,),),
        //           ),
        // ),