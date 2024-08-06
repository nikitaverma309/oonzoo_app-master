import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

class LargeBannerSection extends StatelessWidget {
  final String imgSrc;

  const LargeBannerSection({Key? key, required this.imgSrc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(imageUrl: imgSrc);
  }
}
