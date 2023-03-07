import 'package:flutter/material.dart';

import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';
import 'package:vertax_fx/common/drawer_menu_item.dart';
import 'package:vertax_fx/common/trader_container.dart';
import 'package:vertax_fx/screens/Be_a_singal.dart';
import 'package:vertax_fx/screens/My_vertex_account.dart';
import 'package:vertax_fx/screens/add_account_page.dart';
import 'package:vertax_fx/screens/my_profile_page.dart';
import 'package:vertax_fx/screens/my_signal_page.dart';
import 'package:vertax_fx/screens/my_subscriptions.dart';
import 'package:vertax_fx/translatekeys/translate_keys.dart';

class HomePage extends StatefulWidget {
  HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isCollepsed = true;
  late double screenHeight, screenWidth;
  ZoomDrawerController zoomDrawerController = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
    return ZoomDrawer(
      controller: zoomDrawerController,
      menuScreen: MenuPage(),
      mainScreen: MainPage(),
      mainScreenScale: 0,
      showShadow: false,
      angle: 0.0,
      // drawerShadowsBackgroundColor: Colors.white,
      slideWidth: MediaQuery.of(context).size.width * 0.8,
    );
  }

  Widget trandercard() => Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return
                  // Text("hello");
                  TraderContainer();
            }),
      );
//  row

}

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: menuitem(),
      ),
    );
  }

  Widget menuitem() => Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment(0, 1),
            colors: <Color>[ColorConstraints.white, ColorConstraints.skyBlue0],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 40, top: 120),
          child: Column(
            children: [
              DrawerMenuItem(
                onpressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyProfilePage()),
                  );
                },
                image: 'assets/Group 957.svg',
                text: TranslateKeys.myProfiletxt,
              ),
              SizedBox(
                height: 25,
              ),
              DrawerMenuItem(
                onpressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyvertexAccountPage()),
                  );
                },
                image: 'assets/Group 962.svg',
                text: TranslateKeys.myvertexAccount,
              ),
              SizedBox(
                height: 25,
              ),
              DrawerMenuItem(
                onpressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddAccountPage()),
                  );
                },
                image: 'assets/Group 958.svg',
                text: TranslateKeys.addAccount,
              ),
              SizedBox(
                height: 25,
              ),
              DrawerMenuItem(
                onpressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BeASignalPage()),
                  );
                },
                image: 'assets/2ZIQTD.tif.svg',
                text: TranslateKeys.beASingal,
              ),
              SizedBox(
                height: 25,
              ),
              DrawerMenuItem(
                onpressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MySubscriptionsPage()),
                  );
                },
                image: 'assets/Group 952.svg',
                text: TranslateKeys.mysubscriptions,
              ),
              SizedBox(
                height: 25,
              ),
              DrawerMenuItem(
                onpressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MysignalPage()),
                  );
                },
                image: 'assets/Group 951.svg',
                text: TranslateKeys.mySignals,
              ),
              SizedBox(
                height: 25,
              ),
              DrawerMenuItem(
                onpressed: () {},
                image: 'assets/Icon feather-log-out.svg',
                text: TranslateKeys.logout,
              ),
            ],
          ),
        ),
      );
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstraints.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: ColorConstraints.white,
          leading: IconButton(
              onPressed: () {
                ZoomDrawer.of(context)!.toggle();
                // ZoomDrawer.of(context)!.close();
              },
              icon: Icon(
                Icons.menu,
                color: ColorConstraints.blue,
              )),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [searchfield(), trandercard()],
          ),
        ),
      ),
    );
  }

  Widget trandercard() => Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return
                  // Text("hello");
                  TraderContainer();
            }),
      );
  Widget searchfield() => Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: TextFormField(
                // textAlign: TextAlign.end,
                style: TextStyle(fontSize: 15, color: ColorConstraints.blue3),
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 25),
                    filled: true,
                    fillColor: ColorConstraints.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: ColorConstraints.grey0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: ColorConstraints.grey0,
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: ColorConstraints.blue1,
                    ), //  SvgPicture.asset(
                    //   color: Colors.red,
                    //   height: 0.01,
                    //   width: 0.01,
                    //   'assets/Group 951.svg',
                    // ),
                    hintText: TranslateKeys.search,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),

            //
            Icon(
              Icons.filter_alt_outlined,
              color: ColorConstraints.blue3,
              size: 30,
            )
          ],
        ),
      );
}
