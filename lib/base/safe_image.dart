import 'package:flutter/material.dart';
import 'package:pits_app/core/data/extensions.dart';

class SafeNetworkImage extends StatelessWidget {
  final String? url;
  final String fallbackAsset;
  final double? width, height;
  final BoxFit? fit;

  const SafeNetworkImage({
    super.key,
    required this.url,
    required this.fallbackAsset,
    this.width,
    this.height, this.fit
  });


  @override
  Widget build(BuildContext context) {
    if(url.isNullOrEmpty()) {
      return Image.asset(fallbackAsset, width: width, height: height, fit: fit);
    }
    return Image.network(
      url!,
      width: width,
      height: height,
      fit: fit,
      errorBuilder: (_, __, ___) => Image.asset(fallbackAsset, width: width, height: height, fit: fit,),
      loadingBuilder: (context, child, progress) {
        if (progress == null) return child;
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}