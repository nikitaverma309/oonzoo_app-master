

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../product_screen/product_screen.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return       Column(
      children: [
        Text("Shop By Category",style: TextStyle(fontSize: 18),),
        SizedBox(height: 12,),
        GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 1.0,
            mainAxisSpacing: 4.0,
            childAspectRatio: 1.55,

            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(18, (index) {
              return InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (builder){
                    return ProductScreen();
                  }));
                },
                child: CachedNetworkImage(
                    imageUrl:
                    "https://cdn.fcglcdn.com/brainbees/resimg/wd_480/images/cattemplate/SBC_Default_summer_${index + 1}.webp"),
              );
            })),
      ],
    );
  }
}
