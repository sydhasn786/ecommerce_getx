import 'package:flutter/material.dart';
import 'package:getx/common/widgets/texts/brand_title_text.dart';
import 'package:getx/utils/constants/colors.dart';
import 'package:getx/utils/constants/enums.dart';
import 'package:getx/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class UBrandTitleWithVerifyIcon extends StatelessWidget {
  const UBrandTitleWithVerifyIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.size = USizes.iconXs,
    this.iconColor = UColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final double? size;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // jitna space ho ga utna hi use hona
        Flexible(
          child: UBrandTitleText(
            title: title,
            maxlines: maxLines,
            brandTextSize: brandTextSize,
            textAlign: textAlign,
            color: textColor,
          ),
        ),
        SizedBox(width: USizes.xs),
        Icon(Iconsax.verify5, color: iconColor, size: size),
      ],
    );
  }
}
