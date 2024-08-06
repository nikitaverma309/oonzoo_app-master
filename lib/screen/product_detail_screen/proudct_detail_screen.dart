import 'package:flutter/material.dart';
import 'package:oonzoo_assingment/screen/product_detail_screen/widget/product_top_section.dart';

import '../home_screen/widget/home_appbar.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    buildDivider() {
      return Container(
        height: 7,
        width: double.infinity,
        color: Colors.grey.withOpacity(.3),
      );
    }

    buildIcon({required String title, required IconData icon}) {
      return Column(
        children: [
          Icon(
            icon,
            color: Theme
                .of(context)
                .primaryColor,
            size: 40,
          ),
          SizedBox(
            height: 12,
          ),
          Text(title)
        ],
      );
    }

    return SafeArea(
      child: Scaffold(
          body: Column(
            children: [
              HomeAppBar(),
              Container(
                color: Colors.black12,
                height: 1,
                width: double.infinity,
              ),
              SizedBox(
                height: 8,
              ),
              Expanded(
                child: ListView(
                    children: [
                    ProductTopSection(),
                SizedBox(
                  height: 18,
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Babyhug First Step to Big Learning Activity Champ Books Set of 10 - English",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(children: [
                          Text(
                            "₹",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "1156.79",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 20),
                          ),
                        ]),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "MRP:",
                                style:
                                TextStyle(color: Colors.grey, fontSize: 18),
                              ),
                              Text(
                                "₹ ",
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "1566.79",
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Colors.black54),
                              ),
                              Text(
                                " 22% OFF",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Theme
                                        .of(context)
                                        .primaryColor),
                              ),
                              Spacer(),
                              Icon(
                                Icons.favorite_border,
                                color: Colors.black54,
                              )
                            ]),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "MRP incl. all taxes; Add'l charges may apply on discounted price",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 12,
                ),
                buildDivider(),
                SizedBox(
                  height: 12,
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on_outlined),
                        Text(
                          "Enter delivery pincode here",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Spacer(),
                        Text(
                          "CHECK",
                          style:
                          TextStyle(color: Theme
                              .of(context)
                              .primaryColor),
                        ),
                        SizedBox(
                          width: 8,
                        )
                      ],
                    )),
                SizedBox(
                  height: 4,
                ),
                Container(
                  color: Colors.grey.shade200,
                  height: 2,
                  width: double.infinity,
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    child: Text(
                      "Same Day/Next Day delivery applicable on this product. Enter pincode to check availability in your area.",
                      style: TextStyle(color: Colors.black87),
                    )),
                SizedBox(
                  height: 12,
                ),
                buildDivider(),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Proudct Descripiton",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      Text('''
Brand - Mark & Mia
Type - Frock Style Onesie
Fabric - Cotton/Knit to Woven
Sleeves - Flutter Sleeves
Neck - Round Neck
Neck Opening - Back Snap Buttons
Pattern - Sequin Embellished
Occasion - Casual Wear
Fit - Regular Fit'''),
                      Text(
                        "Read More...",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),


                ),
                SizedBox(
                  height: 12,
                ),
                buildDivider(),
                      SizedBox(
                        height: 12,
                      ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildIcon(icon: Icons.wallet_giftcard, title: "Gift\nWrap"),
                  SizedBox(
                    width: 28,
                  ),
                  buildIcon(
                      icon: Icons.reset_tv_sharp,
                      title: "Days Return\n or Exchange"),
                ],
              ),
              SizedBox(
                height: 22,
              ),
            ],
          )),
      ],
    ),)
    ,
    );
  }
}
