import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram/screens/shareButtonshild.dart';

class expelorPage extends StatelessWidget {
  const expelorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1C1F2E),
        appBar: AppBar(
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('images/mood.png'),
              InkWell(
                  onTap: () {},
                  child: Image(image: AssetImage('images/icon_direct.png')))
            ],
          ),
          backgroundColor: Color(0xff1C1F2E),
        ),
        body: CustomScrollView(
          slivers: [
            // SliverToBoxAdapter(
            //   child: ElevatedButton(
            //     onPressed: () {
            //       showModalBottomSheet(
            //         barrierColor: Colors.transparent,
            //         backgroundColor: Colors.transparent,
            //         context: context,
            //         isScrollControlled: true,
            //         builder: (BuildContext context) {
            //           return Padding(
            //             padding: EdgeInsets.only(
            //                 bottom: MediaQuery.of(context).viewInsets.bottom),
            //             child: DraggableScrollableSheet(
            //               initialChildSize: 0.5,
            //               minChildSize: 0.2,
            //               maxChildSize: 0.7,
            //               builder: (context, controler) {
            //                 return shareButton(
            //                   controller: controler,
            //                 );
            //               },
            //             ),
            //           );
            //         },
            //       );
            //     },
            //     child: Text('Open BottomSheet'),
            //   ),
            // ),
            SliverToBoxAdapter(
              child: _story(),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return _post_Page();
              }, childCount: 5),
            ),
          ],
        ));
  }

  Widget _story() {
    return Padding(
      padding: const EdgeInsets.only(top: 13, left: 17, right: 17),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage('images/icon_plus.png'),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(17),
                        color: Colors.transparent,
                      ),
                      width: 64,
                      height: 64,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('your story',
                        style: TextStyle(color: Colors.white, fontFamily: 'gm'))
                  ],
                )),
            SizedBox(
              width: 10,
            ),
            InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage('images/Rectangle 11.png'),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffF35383), width: 2),
                        borderRadius: BorderRadius.circular(17),
                        color: Colors.transparent,
                      ),
                      width: 64,
                      height: 64,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Mahaa.can...',
                        style: TextStyle(color: Colors.white, fontFamily: 'gm'))
                  ],
                )),
            SizedBox(
              width: 10,
            ),
            InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage('images/Rectangle 4.png'),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffF35383), width: 2),
                        borderRadius: BorderRadius.circular(17),
                        color: Colors.transparent,
                      ),
                      width: 64,
                      height: 64,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('shahin',
                        style: TextStyle(color: Colors.white, fontFamily: 'gm'))
                  ],
                )),
            SizedBox(
              width: 20,
            ),
            InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage('images/Rectangle 13.png'),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffF35383), width: 2),
                        borderRadius: BorderRadius.circular(17),
                        color: Colors.transparent,
                      ),
                      width: 64,
                      height: 64,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('shahin',
                        style: TextStyle(color: Colors.white, fontFamily: 'gm'))
                  ],
                )),
            SizedBox(
              width: 20,
            ),
            InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage('images/Rectangle 15.png'),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffF35383), width: 2),
                        borderRadius: BorderRadius.circular(17),
                        color: Colors.transparent,
                      ),
                      width: 64,
                      height: 64,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'shahin',
                      style: TextStyle(color: Colors.white, fontFamily: 'gm'),
                    )
                  ],
                )),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget _post_Page() {
    return Padding(
      padding: const EdgeInsets.only(left: 17, top: 32, right: 17),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    child: Image(image: AssetImage('images/profile.png')),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffF35383), width: 2),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.transparent,
                    ),
                    width: 44,
                    height: 44,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'amirAhmadadibi',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'gb',
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'امیر احمد برنامه نویس موبایل',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'shabnam',
                            fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: InkWell(
                      onTap: () {},
                      child: Image(image: AssetImage('images/icon_menu.png'))),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    child: Image(
                      image: AssetImage('images/post_cover.png'),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: 385,
                    height: 425,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 320, top: 30, right: 15, bottom: 350),
                    child: Image(
                      image: AssetImage('images/icon_video.png'),
                    ),
                  ),
                  ClipRect(
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
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(12)),
                        width: 330,
                        height: 46,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Image(
                                    image: AssetImage('images/icon_hart.png'),
                                  ),
                                ),
                                Text(
                                  ' 2.6K',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'gb',
                                      fontSize: 14),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Image(
                                      image: AssetImage(
                                          'images/icon_comments.png')),
                                ),
                                Text(
                                  ' 1.5K',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'gb',
                                      fontSize: 14),
                                ),
                              ],
                            ),
                            InkWell(
                                onTap: () {},
                                child: Image(
                                    image:
                                        AssetImage('images/icon_share.png'))),
                            InkWell(
                                onTap: () {},
                                child: Image(
                                    image: AssetImage('images/icon_save.png')))
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
