import 'package:flutter/material.dart';
import 'package:getx/utils/constants/enums.dart';

class UBrandTitleText extends StatelessWidget {
  const UBrandTitleText({
    super.key,
    this.color,
    required this.title,
    required this.maxlines,
    this.textAlign = TextAlign.center,
   this.brandTextSize = TextSizes.small,
  });
  final Color? color;
  final String title;
  final int maxlines;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: brandTextSize == TextSizes.small 
      ? Theme.of(context).textTheme.labelMedium
      : brandTextSize == TextSizes.medium ? Theme.of(context).textTheme.bodyLarge
      : brandTextSize == TextSizes.large ? Theme.of(context).textTheme.titleLarge
      : Theme.of(context).textTheme.bodyMedium
    );
  }
}
