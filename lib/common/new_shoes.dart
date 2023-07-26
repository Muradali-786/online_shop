import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/common/app_color.dart';

class NewShoes extends StatelessWidget {
  const NewShoes({super.key,required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height*0.12,
        width: MediaQuery.of(context).size.width*0.27,

        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Colors.white,
              spreadRadius: 1,
              blurRadius: 0.8,
              offset: Offset(0, 1),
            ),
          ],

        ),
        child: CachedNetworkImage(
          imageUrl: imageUrl
        )
    );
  }
}
