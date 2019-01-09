import 'package:flutter/material.dart';
import 'login.dart';
import 'auth.dart';
import 'package:firebase_auth/firebase_auth.dart';


void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
         primaryColor: salmonColor
      ),
      home: new LoginPage(auth: new Auth())
    ); 
  }
}






// import 'package:flutter/material.dart';
// import 'restaurants.dart';
// import 'orders.dart';
// import 'profile.dart';
// import 'login.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
// import 'auth.dart';



// void main() => runApp(MyApp());


// final salmonColor = const Color(0XFFFD6667);



// class MyApp extends StatefulWidget {


//   @override
//   State<StatefulWidget> createState() {
//       // TODO: implement createState
//       return MyAppState();
//     }
// }

// class MyAppState extends State<MyApp> {


//   int _selectedPage = 0;
//   final _pageOptions = [
//    RestaurantsPage(),
//    OrdersPage(),
//    ProfilePage(),
//   ];

  
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // primarySwatch: Colors.green,
//         primaryColor: salmonColor,

//       ),
//       home: new LoginPage(auth: new Auth()
//       ),
//     );
//     //   Scaffold(
//     //     appBar: AppBar(title: Text(''),),
//     //     body: _pageOptions[_selectedPage],
//     //     bottomNavigationBar: BottomNavigationBar(
//     //       currentIndex: _selectedPage,
//     //       onTap: (int index) {
//     //         setState(() {
//     //                       _selectedPage = index;
//     //                     });
//     //       },  
//     //       items: [
//     //         BottomNavigationBarItem(
//     //           icon: new Icon(MdiIcons.food),
//     //           title: Text(''),
//     //         ),
//     //         BottomNavigationBarItem(
//     //           icon: new Icon(MdiIcons.notebook),
//     //           title: Text(''),
//     //         ),
//     //         BottomNavigationBarItem(
//     //           icon: new Icon(MdiIcons.faceProfile),
//     //           title: Text(''),
//     //         ),
           
//     //       ],
//     //     ),
//     //     ),
//     // );
//   }

// }


