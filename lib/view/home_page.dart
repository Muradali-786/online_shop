
import 'package:flutter/material.dart';
import 'package:online_shop/common/app_color.dart';
import 'package:online_shop/common/app_style.dart';
import 'package:online_shop/common/home_widget.dart';
import 'package:online_shop/model/sneaker_model.dart';
import 'package:online_shop/services/helper.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 3, vsync: this);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.scafoldBackgroundColor,
        body: SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(16, 45, 0, 0),
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: const BoxDecoration(
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Athletics Shoes',
                      style: TextStyle(fontSize: 32,color: Colors.black,fontWeight: FontWeight.bold)),
                  Text('Collection',
                      style: TextStyle(fontSize: 32,color: Colors.black,fontWeight: FontWeight.bold)),
                  TabBar(
                    padding: EdgeInsets.zero,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorColor: AppColor.transparentColor,
                      controller: _tabController,
                      isScrollable: true,
                      labelColor: AppColor.whiteColor,
                      labelStyle: TextStyle(fontSize: 32,color: Colors.black,fontWeight: FontWeight.bold),
                      unselectedLabelColor: AppColor.greyColor.withOpacity(0.3),
                      tabs: const [
                        Tab(text: ('Men Shoes')),
                        Tab(text: ('Women Shoes')),
                        Tab(text: ('Kids Shoes'))
                      ]),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.28),
            child: Container(
              padding: EdgeInsets.only(left: 12),
              child: TabBarView(controller: _tabController,
                  children: [

                  Text('KHAN'),
                    Text('ALI'),
                    Text('SWATI'),


              ]),
            ),
          )
        ],
      ),
    ));
  }
}

