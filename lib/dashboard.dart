import 'package:flutter/material.dart';
import 'package:latihanflutter/content/content_1.dart';
import 'package:latihanflutter/content/home/slides_master.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:latihanflutter/content/news/news_master.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:flutter/cupertino.dart';

// class Page1 extends StatefulWidget {
//   @override
//   _Page1State createState() => _Page1State();
// }

// class _Page1State extends State<Page1> {
//   int _pilihIndex = 0; //pengisian nilai awal
//   List<Widget> _isiList = <Widget>[
//     Home(), //0
//     News(), //1
//     Text('Message'), //2
//     Text('Profile'), //3
//     Content1(), //4
//   ]; //list sesuai urutan _pilihIndex

//   void _onItemTap(int index) {
//     //nilai int dimasukkan index
//     setState(() {
//       _pilihIndex = index;
//     });
//   } //membuat fungsi ketika state berubah

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: Center(child: _isiList.elementAt(_pilihIndex)),
//       // ),
//       body: Center(
//         child: _isiList.elementAt(_pilihIndex),
//       ), //menampilkan isi dari _isiList
//       bottomNavigationBar: ConvexAppBar.badge(
//         {1: '10'},
//         items: [
//           TabItem(
//             icon: Icons.home,
//             title: 'Home',
//           ),
//           TabItem(
//             icon: Icons.receipt_long,
//             title: 'News',
//           ),
//           TabItem(
//             icon: Icons.message,
//             title: 'Message',
//           ),
//           TabItem(
//             icon: Icons.person,
//             title: 'Acount',
//           ),
//           TabItem(
//             icon: Icons.copyright_sharp,
//             title: 'Content',
//           ),
//         ],
//         style: TabStyle.react,
//         initialActiveIndex: _pilihIndex,
//         color: Colors.white70, //color inactive
//         onTap: _onItemTap,
//         // backgroundColor: Color.fromRGBO(8, 47, 107, 1),
//         backgroundColor: Colors.blue[600],
//         curve: Curves.easeInOut,
//         badgeColor: Colors.redAccent,
//         badgeTextColor: Colors.white,
//         badgeMargin: EdgeInsets.only(bottom: 20, right: 20),
//       ),
//     );
//   }
// }
class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

List<Widget> _buildScreens() {
  return [
    Home(),
    News(),
    Text('Akun'),
    Text('konten'),
  ];
}

class _Page1State extends State<Page1> {
  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.home),
        title: ("Home"),
        activeColorPrimary: Colors.blue[600],
        inactiveColorPrimary: CupertinoColors.systemGrey,
        iconSize: 23,
        activeColorSecondary: Colors.blue[400],
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.news_solid),
        title: ("News"),
        activeColorPrimary: Colors.blue[600],
        inactiveColorPrimary: CupertinoColors.systemGrey,
        iconSize: 23,
        activeColorSecondary: Colors.blue[400],
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.arrow_down_doc),
        title: ("Content"),
        activeColorPrimary: Colors.blue[600],
        inactiveColorPrimary: CupertinoColors.systemGrey,
        iconSize: 23,
        activeColorSecondary: Colors.blue[400],
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.person_circle),
        title: ("Account"),
        activeColorPrimary: Colors.blue[600],
        inactiveColorPrimary: CupertinoColors.systemGrey,
        iconSize: 23,
        activeColorSecondary: Colors.blue[400],
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;
    _controller = PersistentTabController(initialIndex: 0);
    return PersistentTabView(
      context,
      controller: _controller,
      navBarHeight: 50,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(0),
          colorBehindNavBar: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(2, 0), //x,y
            )
          ]),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInCirc,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.easeInOut,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style3, // Choose the nav bar style with this property.
    );
  }
}
