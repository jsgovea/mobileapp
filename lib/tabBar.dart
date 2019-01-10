import 'package:flutter/material.dart';
import 'restaurants.dart';
import 'orders.dart';
import 'profile.dart';
import 'login.dart';
import 'auth.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

final salmonColor = const Color(0XFFFD6667);



class NavBar extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new NavBarState();


}


enum AuthStatus {
  notSignedIn,
  signedIn
}

class NavBarState extends State<NavBar> {

  AuthStatus authStatus = AuthStatus.notSignedIn;

  int _selectedPage = 0;
  final _pageOptions = [
   RestaurantsPage(),
   OrdersPage(),
   ProfilePage(),
  ];

  void _signedIn() {
    setState(() {
          authStatus = AuthStatus.signedIn;
        });
  }

  @override
  Widget build(BuildContext context) {

        return  new Scaffold(
        appBar: AppBar(title: Text('')),
        body: _pageOptions[_selectedPage],
        
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedPage,
          onTap: (int index) {
            setState(() {
                          _selectedPage = index;
                        });
          },  
          items: [
            BottomNavigationBarItem(
              icon: new Icon(MdiIcons.food),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: new Icon(MdiIcons.notebook),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: new Icon(MdiIcons.faceProfile),
              title: Text(''),
            ),
           
          ],
        ),
    );
    }
 
  }

// }


