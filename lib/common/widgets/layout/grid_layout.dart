import 'package:flutter/material.dart';
import 'package:getx/utils/constants/sizes.dart';

class UGridLayout extends StatelessWidget {
  const UGridLayout({
    super.key,
    this.mainAxisExtent = 288,
    required this.itemBuilder,
    required this.itemCount,
  });

  final int itemCount;
  final double mainAxisExtent;
  final Widget Function(BuildContext context, int index) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: itemCount,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: USizes.gridViewSpacing,
        crossAxisSpacing: USizes.gridViewSpacing,
        mainAxisExtent: mainAxisExtent,
      ),
      itemBuilder: itemBuilder,
    );
  }
}