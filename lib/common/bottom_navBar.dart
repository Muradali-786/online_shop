import 'package:flutter/material.dart';
import 'package:online_shop/common/app_color.dart';
import 'package:online_shop/common/navigation_bar_widget.dart';
import 'package:online_shop/controller/main_screen_provider.dart';
import 'package:provider/provider.dart';


class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
      builder: (context,value,child){
        return SafeArea(
          child: Padding(padding: const EdgeInsets.all(8),
            child: Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: AppColor.blackColor,
                  borderRadius: BorderRadius.circular(16)
              ),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NavBarWidget(
                    onTap: (){
                      value.pageIndex=0;

                    },
                    iconB:value.pageIndex==0? Icons.home:Icons.home_outlined,

                  ),
                  NavBarWidget(
                    onTap: (){
                      value.pageIndex=1;

                    },
                    iconB: value.pageIndex==1?Icons.search:Icons.search_off,

                  ),
                  NavBarWidget(
                    onTap: (){
                      value.pageIndex=2;

                    },
                    iconB: value.pageIndex==2?Icons.add:Icons.add_circle_outline,

                  ),
                  NavBarWidget(
                    onTap: (){
                      value.pageIndex=3;

                    },
                    iconB:value.pageIndex==3? Icons.shopping_cart:Icons.shopping_cart_outlined,

                  ),
                  NavBarWidget(
                    onTap: (){
                      value.pageIndex=4;

                    },
                    iconB:value.pageIndex==4? Icons.person:Icons.person_outline,

                  ),

                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
