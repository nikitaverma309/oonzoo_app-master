

import 'package:flutter/cupertino.dart';
import 'package:oonzoo_assingment/common/common.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CarousalSection extends StatelessWidget {
  const CarousalSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420,

      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ...Common.carousalList
              .map((image) => Container(
            padding: EdgeInsets.only(left: 16),
            width:  MediaQuery.of(context).size.width * .8,
            child: CachedNetworkImage(
              imageUrl: image,
              fit: BoxFit.fitWidth,
            ),
          ))
              .toList(),
          SizedBox(width: 12,)
        ],
      ),
    );
  }
}
