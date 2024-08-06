

import 'package:flutter/material.dart';
import 'package:oonzoo_assingment/common/common.dart';
import 'package:oonzoo_assingment/common/constant.dart';
import 'package:oonzoo_assingment/screen/home_screen/widget/home_appbar.dart';
import 'package:oonzoo_assingment/screen/product_screen/product_card.dart';

import '../home_screen/home_page.dart';
import '../home_screen/widget/address_bar.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            HomeAppBar(),
            Expanded(
                child: ListView(
                  children: [
                    AddressBar(),

                    GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 1.0,
                        mainAxisSpacing: 4.0,
                        childAspectRatio: 3/5,

                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: List.generate(Common.productList.length, (index) {
                          return InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (builder){
                                return ProductScreen();
                              }));
                            },
                            child:
                                ProductCard(imgSrc: Common.productList[index],)

                          );
                        })),


                  ],
                )),
          ],
        ),
      ),
    );;
  }
}
