import 'package:flutter/material.dart';
import 'package:online_shop/common/app_color.dart';
class NavBarWidget extends StatelessWidget {
  final IconData? iconB;
  final void Function()? onTap;
  const NavBarWidget({Key? key, this.iconB, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 36,
        width: 36,
        child: Icon(iconB,color: AppColor.whiteColor,),
      ),




    );
  }
}
