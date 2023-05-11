import 'dart:ui';

import 'package:flutter/material.dart';

class shareButton extends StatelessWidget {
  const shareButton({Key? key, this.controller}) : super(key: key);
  final ScrollController? controller;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: DraggableScrollableSheet(
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Color.fromRGBO(255, 255, 255, 0.2),
                ),
                child: Center(
                  child: _getcontent(scrollController),
                ),
              );
            },
          )),
    );
  }

  Widget _getcontent(scrollController) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CustomScrollView(
          controller: controller,
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    height: 5,
                    width: 67,
                    margin: EdgeInsets.only(top: 10, bottom: 22),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                  ),
                  Row(
                    children: [
                      Text(
                        'Share',
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'gb',
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: 220,
                      ),
                      Image(
                          image:
                              AssetImage('images/icon_share_bottomsheet.png'))
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Container(
                    height: 46,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 0.3),
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Image(
                          image:
                              AssetImage('images/icon_search_navigation.png'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: TextField(
                          decoration: InputDecoration(
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              hintText: 'serach...'),
                        ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  )
                ],
              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                return _getItemGrid();
              }, childCount: 100),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 10,
                  crossAxisCount: 4,
                  mainAxisExtent: 110),
            ),
            SliverPadding(padding: EdgeInsets.only(top: 90))
          ],
        ),
        Positioned(
            bottom: 28,
            child: ElevatedButton(
                onPressed: () {},
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 45, vertical: 13),
                    child: Text(
                      'Send',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))))
      ],
    );
  }

  Widget _getItemGrid() {
    return Column(children: [
      Container(
        width: 60,
        height: 60,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          child: Image(image: AssetImage('images/profile.png')),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        'amirahad adibi',
        textAlign: TextAlign.center,
        style: TextStyle(fontFamily: 'gb', fontSize: 12, color: Colors.white),
      )
    ]);
  }
}
