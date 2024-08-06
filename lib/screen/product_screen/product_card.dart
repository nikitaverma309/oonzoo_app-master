import 'package:flutter/cupertino.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../product_detail_screen/proudct_detail_screen.dart';

class ProductCard extends StatelessWidget {
  final String imgSrc;

  const ProductCard({Key? key, required this.imgSrc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (builder) {
          return ProductDetailScreen();
        }));
      },
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(imageUrl: imgSrc),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("Babyhug"),
                        Spacer(),
                        Icon(
                          Icons.favorite_border,
                          color: Colors.black54,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "₹",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "1156 ",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "1449 ",
                          style:
                              TextStyle(decoration: TextDecoration.lineThrough),
                        ),
                        Text(
                          "23% OFF",
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        )
                      ],
                    ),
                    Text("Club Price : ₹1086.75")
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
