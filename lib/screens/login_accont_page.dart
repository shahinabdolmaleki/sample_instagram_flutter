import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  FocusNode myFocusNode = new FocusNode();
  FocusNode myFocusNode2 = new FocusNode();
  @override
  void initState() {
    super.initState();
    myFocusNode.addListener(() {
      setState(() {});
    });
  }

  String Email = '';
  String pass = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [_getImage(), _getLoginBox()],
      ),
    );
  }

  Widget _getImage() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [const Color(0xFF304FFE), const Color(0xFFAB47BC)])),
        child: Column(
          children: [
            SizedBox(
              height: 76,
            ),
            Image(
              image: AssetImage('images/rocket.png'),
            )
          ],
        ),
      ),
    );
  }

  Widget _getLoginBox() {
    return Padding(
      padding: const EdgeInsets.only(top: 435),
      child: Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xff1C1F2E),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          width: 428,
          height: 461,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sign in to ',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'gb', fontSize: 20),
                    ),
                    Image(image: AssetImage('images/mood.png'))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 44, right: 44, top: 25),
                child: TextField(
                  focusNode: myFocusNode2,
                  style: TextStyle(color: Colors.white),
                  controller: nameController,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.white),
                    hintText: 'Info@test.com',
                    contentPadding: EdgeInsets.fromLTRB(10, 36, 10, 0),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: Color(0xffC5C5C5),
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        width: 3,
                        color: Color(0xffF35383),
                      ),
                    ),
                    labelText: 'Email',
                    labelStyle: TextStyle(
                        color: myFocusNode2.hasFocus
                            ? Color(0xffF35383)
                            : Colors.white),
                  ),
                  onChanged: (text) {
                    setState(
                      () {
                        Email = text;
                      },
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 44, left: 44, top: 20),
                child: TextField(
                  focusNode: myFocusNode,
                  obscureText: true,
                  style: TextStyle(color: Colors.white),
                  controller: passController,
                  decoration: InputDecoration(
                    hintText: '**********',
                    hintStyle: TextStyle(color: Colors.white),
                    contentPadding: EdgeInsets.fromLTRB(
                        10, 36, 10, 0), // control your hints text size

                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: Color(0xffC5C5C5),
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        width: 3,
                        color: Color(0xffF35383),
                      ),
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                        color: myFocusNode.hasFocus
                            ? Color(0xffF35383)
                            : Colors.white),
                  ),
                  onChanged: (text2) {
                    setState(
                      () {
                        pass = text2;
                      },
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: ElevatedButton(
                  onPressed: () {},
                  style:
                      ElevatedButton.styleFrom(fixedSize: const Size(129, 46)),
                  child: Text(
                    'sign in',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
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
        ),
      ),
    );
  }

  @override
  void dispose() {
    myFocusNode.dispose();
    myFocusNode2.dispose();
    super.dispose();
  }
}
