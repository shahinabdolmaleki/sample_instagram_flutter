import 'dart:ui';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/material.dart';

class searchScreen extends StatelessWidget {
  const searchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: Center(
          child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 17,
              ),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: _getcontent(),
                  ),
                  SliverGrid(
                    delegate: SliverChildBuilderDelegate((context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: Image(
                              image: AssetImage('images/item$index.png'),
                            ),
                          ),
                        ),
                      );
                    }, childCount: 10),
                    gridDelegate: SliverQuiltedGridDelegate(
                        crossAxisCount: 3,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        repeatPattern: QuiltedGridRepeatPattern.inverted,
                        pattern: [
                          QuiltedGridTile(2, 1),
                          QuiltedGridTile(2, 2),
                          QuiltedGridTile(1, 1),
                          QuiltedGridTile(1, 1),
                          QuiltedGridTile(1, 1),
                        ]),
                  )
                ],
              )),
        ),
      ),
    );
  }

  Widget _getcontent() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Container(
            height: 46,
            decoration: BoxDecoration(
                color: Color(0xff272B40),
                borderRadius: BorderRadius.circular(13)),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Image(
                  image: AssetImage('images/icon_search_navigation.png'),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: 'serach...',
                      hintStyle: TextStyle(fontSize: 12.0, color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: Image(image: AssetImage('images/icon_scan.png')))
              ],
            ),
          ),
        ),
        _getTextList()
      ],
    );
  }

  Widget _getTextList() {
    return Container(
      margin: EdgeInsets.only(top: 0, bottom: 20),
      height: 23,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(right: 8, left: 8),
            decoration: BoxDecoration(
                color: Color(0xff272B40),
                borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 4, bottom: 3, right: 10, left: 10),
                child: Text(
                  'shahin $index',
                  style: TextStyle(
                      color: Colors.white, fontSize: 10, fontFamily: 'gb'),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
