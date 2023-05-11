import 'package:flutter/material.dart';
import 'package:instagram/model/enums/activity_type_enum.dart';

class activityscreen extends StatefulWidget {
  const activityscreen({Key? key}) : super(key: key);

  @override
  State<activityscreen> createState() => _activityscreenState();
}

class _activityscreenState extends State<activityscreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabcontroller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabcontroller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 50,
              color: Color(0xff1C1F2E),
              child: TabBar(
                labelStyle: TextStyle(fontFamily: 'gb', fontSize: 16),
                controller: _tabcontroller,
                indicatorColor: Colors.pink,
                indicatorWeight: 2.5,
                indicatorPadding: EdgeInsets.symmetric(horizontal: 25),
                tabs: [
                  Tab(
                    text: 'Following',
                  ),
                  Tab(
                    text: 'You',
                  )
                ],
              ),
            ),
            Expanded(
              child: TabBarView(controller: _tabcontroller, children: [
                CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30, top: 25),
                        child: Text(
                          'New',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'gb',
                              fontSize: 16),
                        ),
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate((context, index) {
                        return _getRow(ActivityStatus.following);
                      }, childCount: 2),
                    ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30, top: 25),
                        child: Text(
                          'Today',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'gb',
                              fontSize: 16),
                        ),
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate((context, index) {
                        return _getRow(ActivityStatus.likes);
                      }, childCount: 3),
                    ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30, top: 25),
                        child: Text(
                          'This Week',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'gb',
                              fontSize: 16),
                        ),
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate((context, index) {
                        return _getRow(ActivityStatus.followBack);
                      }, childCount: 100),
                    ),
                  ],
                ),
                CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30, top: 25),
                        child: Text(
                          'New',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'gb',
                              fontSize: 16),
                        ),
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate((context, index) {
                        return _getRow(ActivityStatus.following);
                      }, childCount: 100),
                    ),
                  ],
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }

  Widget _getRow(ActivityStatus status) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 10),
            child: Container(
              width: 7,
              height: 7,
              decoration:
                  BoxDecoration(color: Colors.pink, shape: BoxShape.circle),
            ),
          ),
          SizedBox(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Image(
                image: AssetImage('images/profile.png'),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text(
                      'amirahmadadibi',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'gb', fontSize: 12),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text('Start following',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'gm',
                            fontSize: 12))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text(
                      'you',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'gm', fontSize: 12),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text('3 min',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'gb',
                            fontSize: 12))
                  ],
                ),
              ),
            ],
          ),
          Spacer(),
          _getAction(status)
        ],
      ),
    );
  }

  Widget _getAction(ActivityStatus status) {
    switch (status) {
      case ActivityStatus.followBack:
        return Padding(
          padding: const EdgeInsets.only(right: 17),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Color(0xffF35383),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  textStyle: TextStyle(fontFamily: 'gb', fontSize: 15)),
              onPressed: () {},
              child: Text('Follow')),
        );

      case ActivityStatus.likes:
        return Padding(
          padding: const EdgeInsets.only(right: 17),
          child: SizedBox(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Image(
                image: AssetImage('images/profile.png'),
              ),
            ),
          ),
        );
      case ActivityStatus.following:
        return Padding(
          padding: const EdgeInsets.only(right: 17),
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              primary: Colors.white,
              side: BorderSide(color: Colors.white, width: 2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
              ),
            ),
            onPressed: () {},
            child: Text(
              'Message',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );

      default:
        return Padding(
          padding: const EdgeInsets.only(right: 17),
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              primary: Colors.white,
              side: BorderSide(color: Colors.white, width: 2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
              ),
            ),
            onPressed: () {},
            child: Text(
              'Message',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
    }
  }
}
