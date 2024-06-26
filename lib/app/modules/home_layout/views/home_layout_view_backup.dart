// import 'dart:ui';

// import 'package:flutter/material.dart';

// import 'package:get/get.dart';
// import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
// import 'package:save_me_new/app/modules/auth/auth_service.dart';
// import 'package:save_me_new/app/modules/home_page/views/home_page_view.dart';
// import 'package:save_me_new/app/modules/profile_page/views/profile_page_view.dart';
// import 'package:save_me_new/app/modules/report_page/views/report_page_view.dart';
// import 'package:save_me_new/app/modules/saveme_page/views/admin_page_view.dart';
// import 'package:save_me_new/app/modules/saveme_page/views/saveme_page_view.dart';
// import 'package:save_me_new/app/modules/webinar_page/views/webinar_page_view.dart';
// import 'package:save_me_new/component/GlobalFunction.dart';

// import '../controllers/home_layout_controller.dart';

// class HomeLayoutView extends GetView<HomeLayoutController> {
//   HomeLayoutView({super.key}) {
//     Get.lazyPut<HomeLayoutController>(
//       () => HomeLayoutController(),
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       darkTheme: ThemeData.dark(),
//       home: const Wrapper(),
//     );
//   }
// }

// class Wrapper extends GetWidget<HomeLayoutController> {
//   const Wrapper({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Get.lazyPut<HomeLayoutController>(
//       () => HomeLayoutController(),
//     );
//     return PersistentTabView(
//       context,
//       screens: _buildScreens(),
//       items: _navBarItems(),
//       controller: Get.find<HomeLayoutController>().controller,
//       confineInSafeArea: true,
//       navBarHeight: 65.0,
//       // backgroundColor: Colors.black,
//       backgroundColor: Colors.white,
//       handleAndroidBackButtonPress: true,
//       resizeToAvoidBottomInset: true,
//       stateManagement: true,
//       hideNavigationBarWhenKeyboardShows: true,
//       decoration: const NavBarDecoration(
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(30),
//             topRight: Radius.circular(30),
//           ),
//           colorBehindNavBar: Colors.white,
//           boxShadow: <BoxShadow>[
//             BoxShadow(
//               color: Colors.black45,
//               blurRadius: 5,
//             )
//           ]),

//       popAllScreensOnTapOfSelectedTab: true,
//       popActionScreens: PopActionScreensType.all,
//       itemAnimationProperties: const ItemAnimationProperties(
//         duration: Duration(milliseconds: 300),
//         curve: Curves.easeInOut,
//       ),
//       screenTransitionAnimation: const ScreenTransitionAnimation(
//           animateTabTransition: true,
//           curve: Curves.easeInOut,
//           duration: Duration(milliseconds: 300)),
//       navBarStyle: NavBarStyle.style1,
//     );
//   }
// }

// List<Widget> _buildScreens() {
//   final AuthService authService = AuthService();
//   // return for admin
//   if (authService.getCurretUser()!.email == 'admin@gmail.com') {
//     return [
//       HomePageView(),
//       WebinarPageView(),
//       const ReportPageView(),
//       AdminPageView(),
//       const ProfilePageView(),
//     ];
//   }
//   // return for user
//   return [
//     HomePageView(),
//     WebinarPageView(),
//     const ReportPageView(),
//     SavemePageView(),
//     const ProfilePageView(),
//   ];
// }

// List<PersistentBottomNavBarItem> _navBarItems() {
//   return [
//     PersistentBottomNavBarItem(
//       icon: const Icon(Icons.home),
//       title: ("Home"),
//       activeColorPrimary: PRIMARY_COLOR,
//       inactiveColorPrimary: Colors.grey.shade400,
//     ),
//     PersistentBottomNavBarItem(
//       icon: const Icon(Icons.slideshow),
//       title: ("Webinar"),
//       activeColorPrimary: PRIMARY_COLOR,
//       inactiveColorPrimary: Colors.grey.shade400,
//     ),
//     PersistentBottomNavBarItem(
//       icon: const Icon(Icons.report),
//       title: ("Lapor"),
//       activeColorPrimary: PRIMARY_COLOR,
//       inactiveColorPrimary: Colors.grey.shade400,
//     ),
//     PersistentBottomNavBarItem(
//       icon: const Icon(Icons.chat_bubble),
//       title: ("Deep Talk"),
//       activeColorPrimary: PRIMARY_COLOR,
//       inactiveColorPrimary: Colors.grey.shade400,
//     ),
//     PersistentBottomNavBarItem(
//       icon: const Icon(Icons.person),
//       title: ("Profile"),
//       activeColorPrimary: PRIMARY_COLOR,
//       inactiveColorPrimary: Colors.grey.shade400,
//     ),
//   ];
// }
