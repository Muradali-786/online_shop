import 'package:flutter/material.dart';
import 'package:online_shop/common/app_color.dart';
import 'package:online_shop/common/bottom_navBar.dart';
import 'package:online_shop/controller/main_screen_provider.dart';
import 'package:online_shop/view/cart_page.dart';
import 'package:online_shop/view/home_page.dart';
import 'package:online_shop/view/profile_page.dart';
import 'package:online_shop/view/search_page.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
   MainScreen({super.key});
   List<Widget> pageList=const [
     HomePage(),
     SearchPage(),
     HomePage(),
     CartPage(),
     ProfilePage()
   ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(builder: (context,value,child){
      return Scaffold(
        backgroundColor: AppColor.scafoldBackgroundColor,
        bottomNavigationBar:const BottomNavBar(),
        body: pageList[value.pageIndex],
      );

    });
  }
}
