import 'package:flutter/cupertino.dart';
import 'package:oonzoo_assingment/common/common.dart';
import 'package:cached_network_image/cached_network_image.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,

      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ...Common.bannerList
              .map((image) => Container(
            padding: EdgeInsets.only(left: 8),
            width:  MediaQuery.of(context).size.width * .85,
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
