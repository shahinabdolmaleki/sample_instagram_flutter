import 'dart:ui';

import 'package:flutter/material.dart';

class switchAccontPage extends StatelessWidget {
  const switchAccontPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage('images/switch_account_background.png'),
                        fit: BoxFit.fitWidth),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        bottom: 30, top: 215, right: 44, left: 44),
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromRGBO(255, 255, 255, 0.5),
                                Color.fromRGBO(255, 255, 255, 0.2),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          width: 340,
                          height: 327,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20, bottom: 20),
                                  child: Image(
                                      image: AssetImage('images/profile.png')),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 20),
                                  child: Text(
                                    'AmirahmadAdibi',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'gb',
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Confirm',
                                      style: TextStyle(
                                          fontFamily: 'gb', fontSize: 16),
                                    ),
                                    style: Theme.of(context)
                                        .elevatedButtonTheme
                                        .style,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'switch account',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'gb',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 63, top: 110),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don’t have an account?/',
                  style: TextStyle(
                      fontFamily: 'gilory',
                      fontSize: 16,
                      color: Color(0xffFFFFFF)),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text('Sign up',
                        style: TextStyle(
                            fontFamily: 'gilory',
                            fontSize: 16,
                            color: Color(0xffFFFFFF))))
              ],
            ),
          )
        ],
      ),
    );
  }
}
