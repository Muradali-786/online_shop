import 'package:flutter/material.dart';
import 'package:online_shop/common/app_color.dart';
import 'package:online_shop/common/app_style.dart';
import 'package:online_shop/common/new_shoes.dart';
import 'package:online_shop/common/product_card.dart';
import 'package:online_shop/model/sneaker_model.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    super.key,
    required Future<List<Sneakers>> male,
  }) : _male = male;

  final Future<List<Sneakers>> _male;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.405,
          child:FutureBuilder<List<Sneakers>>(
            future: _male,
            builder: (context,snapshot){
              if(snapshot.connectionState==ConnectionState.waiting){
                return Center(
                  child: CircularProgressIndicator(color: AppColor.blackColor,),
                );
              }
              else if(snapshot.hasError){
                return Text("Error ${snapshot.error}");
              }else{
                final male=snapshot.data;
                return ListView.builder(
                    itemCount: male!.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      final shoe=snapshot.data![index];

                      return ProductCard(
                        price: "\$${shoe.price}",
                        category: shoe.category,
                        id: shoe.id,
                        name: shoe.name,
                        image: shoe.imageUrl[0],
                      );


                    });

              }

            },
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10,17,10,17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Latest Shoes',style: AppStyle().textStyle(24, AppColor.blackColor, FontWeight.bold),),
                  Row(
                    children: [
                      Text('Show All',style: AppStyle().textStyle(22, AppColor.blackColor, FontWeight.w500),),
                      Icon(Icons.keyboard_arrow_right)
                    ],
                  )

                ],
              ),
            )
          ],
        ),
        SizedBox(
            height: MediaQuery.of(context).size.height*0.12,
            child: FutureBuilder<List<Sneakers>>(
              future: _male,
              builder: (context,snapshot){
                if(snapshot.connectionState==ConnectionState.waiting){
                  return Center(
                    child: CircularProgressIndicator(color: AppColor.blackColor,),
                  );
                }
                else if(snapshot.hasError){
                  return Text("Error ${snapshot.error}");
                }else{
                  final male=snapshot.data;
                  return ListView.builder(
                      itemCount: male!.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        final shoe=snapshot.data![index];

                        return Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: NewShoes(
                            imageUrl: shoe.imageUrl[1],
                          ),
                        );

                      });

                }

              },
            )

        )

      ],
    );
  }
}
