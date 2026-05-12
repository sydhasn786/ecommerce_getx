import 'package:flutter/material.dart';
import 'package:getx/common/widgets/custom_shapes/rounded_container.dart';
import 'package:getx/utils/constants/colors.dart';
import 'package:getx/utils/constants/sizes.dart';

class USingleAddress extends StatelessWidget {
  const USingleAddress({super.key, required this.isSelected});

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return URoundedContainer(
      width: double.infinity,
      showBorder: isSelected,
      padding: EdgeInsets.all(USizes.md),
      child: Column(
        children: [
          Text(
            "Unknown Pro",
            style: Theme.of(context).textTheme.titleLarge,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          // phone number
          Text('+92 306 0594109', maxLines: 1, overflow: TextOverflow.ellipsis),

          //Address
          Text(
            'House No. 123, Street No. 45, City Name, Country',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
