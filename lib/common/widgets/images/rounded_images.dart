import 'package:flutter/material.dart';
import 'package:getx/utils/constants/sizes.dart';

class URoundedImage extends StatelessWidget {
  const URoundedImage({super.key,  
  required this.imageUrl,
  this.width, 
  this.height, 
  this.applyImageRadius = true, 
  this.border, 
  this.backgroundColor, 
  this.fit, this.padding, 
  this.isNetworkImage = false, 
  this.onPressed, 
  this.borderRadius = USizes.md});

  final String imageUrl;
  final double? width, height;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color? backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: border,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: ClipRRect(
        borderRadius: applyImageRadius
            ? BorderRadius.circular(borderRadius)
            : BorderRadius.zero,
        child: Image(
          image: isNetworkImage ? NetworkImage(imageUrl) : AssetImage(imageUrl),
          fit: fit,
        ),
      ),
    );
  }
}
