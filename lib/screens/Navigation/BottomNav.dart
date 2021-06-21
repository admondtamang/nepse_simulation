import 'package:flutter/material.dart';
import 'package:nepe_app/screens/Demo/DemoPage.dart';
import 'package:nepe_app/screens/Home/HomeScreen.dart';
import 'package:nepe_app/screens/Profile/ProfilePage.dart';
import 'package:nepe_app/utils/constants.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> with TickerProviderStateMixin {
  late AnimationController _controller;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 55,
        decoration: BoxDecoration(color: kblueGreyColor),
        width: double.infinity,
        child: TabBar(
          controller: _tabController,
          indicator: BoxDecoration(
              color: kWhiteTransparentColor,
              borderRadius: BorderRadius.circular(100)),
          tabs: [
            Icon(Icons.home),
            Icon(Icons.place),
            Icon(Icons.person),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [HomeScreen(), DemoPage(), ProfilePage()],
      ),
    );
  }
}
