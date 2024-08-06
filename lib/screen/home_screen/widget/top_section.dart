

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:oonzoo_assingment/common/common.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class TopSection extends StatefulWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  State<TopSection> createState() => _TopSectionState();
}

class _TopSectionState extends State<TopSection> {
  int carouselIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemBuilder: ((context, index, _) {
        return Stack(
          fit: StackFit.expand,
          alignment: Alignment.bottomCenter,
          children: [
            CachedNetworkImage(
              imageUrl: Common.topSectionList[carouselIndex],
              fit: BoxFit.fill,
              placeholder: (context, url) => Shimmer.fromColors(
                baseColor: Colors.grey,
                highlightColor: Colors.white,
                child: Container(
                  height: 300,
                  color: Colors.black.withOpacity(.2),
                ),
              ),
            ),
            Positioned(
              child: AnimatedSmoothIndicator(
                activeIndex: carouselIndex,
                count: Common.topSectionList.length,
                effect: WormEffect(dotHeight: 8,dotWidth: 8,dotColor: Colors.white,activeDotColor: Theme.of(context).primaryColor),
              ),

              bottom: 10,
            )
          ],
        );
      }),
      options: CarouselOptions(
        onPageChanged: (index, _) {
          setState(() {
            carouselIndex = index;
          });
        },
        viewportFraction: 1,
        height: 300,
      ),
      itemCount:  Common.topSectionList.length,
    );
  }
}