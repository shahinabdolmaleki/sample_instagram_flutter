import 'package:flutter/material.dart';
import 'package:instagram/screens/activity_screen.dart';
import 'package:instagram/screens/expelor_page.dart';
import 'package:instagram/screens/gallery_screen.dart';
import 'package:instagram/screens/searchScreen.dart';
import 'package:instagram/screens/user_profile_screen.dart';

class mainScreen extends StatefulWidget {
  const mainScreen({Key? key}) : super(key: key);

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  int _selectedbottomnavigationitem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15))),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Color(0xff1C1F2E),
              currentIndex: _selectedbottomnavigationitem,
              onTap: (int index) {
                setState(() {
                  _selectedbottomnavigationitem = index;
                });
              },
              selectedFontSize: 20,
              unselectedItemColor: Colors.white,
              showUnselectedLabels: false,
              showSelectedLabels: false,
              selectedIconTheme: IconThemeData(color: Colors.pink),
              items: [
                BottomNavigationBarItem(
                    icon: Image.asset('images/icon_home.png'),
                    activeIcon: Image.asset('images/icon_active_home.png'),
                    label: 'shahin'),
                BottomNavigationBarItem(
                    icon: Image.asset('images/icon_search_navigation.png'),
                    activeIcon:
                        Image.asset('images/icon_search_navigation_active.png'),
                    label: 'shahin'),
                BottomNavigationBarItem(
                    icon: Image.asset('images/icon_add_navigation.png'),
                    activeIcon:
                        Image.asset('images/icon_add_navigation_active.png'),
                    label: 'shahin'),
                BottomNavigationBarItem(
                    icon: Image.asset('images/icon_activity_navigation.png'),
                    activeIcon: Image.asset(
                        'images/icon_activity_navigation_active.png'),
                    label: 'shahin'),
                BottomNavigationBarItem(
                    icon: Container(
                      width: 30,
                      height: 30,
                      child: Padding(
                        padding: EdgeInsets.all(2),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: Image.asset('images/profile.png'),
                          ),
                        ),
                      ),
                    ),
                    activeIcon: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: Color(0xffF35383),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(6),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(2),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: Image.asset('images/profile.png'),
                          ),
                        ),
                      ),
                    ),
                    label: 'shahin'),
              ],
            ),
          ),
        ),
        body: IndexedStack(
          index: _selectedbottomnavigationitem,
          children: getlayout(),
        ));
  }

  List<Widget> getlayout() {
    return <Widget>[
      expelorPage(),
      searchScreen(),
      galleryScreen(),
      activityscreen(),
      UserProfileScreen(),
    ];
  }
}
