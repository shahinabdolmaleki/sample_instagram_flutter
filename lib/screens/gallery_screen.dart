import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class galleryScreen extends StatelessWidget {
  const galleryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1C1F2E),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xff1C1F2E),
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text('Post'),
                  SizedBox(
                    width: 10,
                  ),
                  Image(image: AssetImage('images/icon_arrow_down.png'))
                ],
              ),
              Row(
                children: [
                  Text('Next'),
                  SizedBox(
                    width: 10,
                  ),
                  Image(image: AssetImage('images/icon_arrow_right_box.png'))
                ],
              )
            ],
          ),
        ),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            _scroll(),
            Container(
              alignment: Alignment.bottomCenter,
              width: double.infinity,
              height: 83,
              decoration: BoxDecoration(
                color: Color(0xff272B40),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Padding(
                padding:
                    EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 45),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Draft',
                        style: TextStyle(
                            color: Colors.pink, fontFamily: 'gm', fontSize: 17),
                      ),
                      Text(
                        'Gallery',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'gm',
                            fontSize: 17),
                      ),
                      Text(
                        'take',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'gm',
                            fontSize: 17),
                      )
                    ]),
              ),
            )
          ],
        ));
  }

  Widget _scroll() {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: _mainimage(),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 17),
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
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
              },
              childCount: 10,
            ),
          ),
        ),
        SliverPadding(padding: EdgeInsets.only(bottom: 83))
      ],
    );
  }

  Widget _mainimage() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 2),
          child: Container(
            width: 394,
            height: 375,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/Rectangle 53.png'),
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ],
    );
  }
}
