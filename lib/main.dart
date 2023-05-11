import 'package:flutter/material.dart';
import 'package:instagram/screens/activity_screen.dart';
import 'package:instagram/screens/expelor_page.dart';
import 'package:instagram/screens/gallery_screen.dart';
import 'package:instagram/screens/login_accont_page.dart';
import 'package:instagram/screens/main_screen.dart';
import 'package:instagram/screens/searchScreen.dart';
import 'package:instagram/screens/shareButtonshild.dart';
import 'package:instagram/screens/switch_accont_page.dart';
import 'package:instagram/screens/user_profile_screen.dart';

void main() {
  runApp(Applicatin());
}

class Applicatin extends StatelessWidget {
  const Applicatin({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: Color(0xffF35383),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              textStyle: TextStyle(fontFamily: 'gb', fontSize: 15)),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: mainScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        repeat: ImageRepeat.repeat,
        image: AssetImage('images/pattern1.png'),
      )),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          width: 155,
                          height: 77,
                          child: Image(
                            image: AssetImage(
                              'images/logo_splash.png',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Made with ',
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }
}
