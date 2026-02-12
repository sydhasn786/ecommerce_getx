import 'package:flutter/material.dart';
import 'package:getx/common/widgets/custom_shapes/circular_container.dart';
import 'package:getx/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:getx/utils/constants/colors.dart';
import 'package:getx/utils/helpers/device_helpers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(),
      body: UPrimaryHeaderContainer(
        child: Container(

        ) ,
      ),
    );
  }
}

class UAppBar extends StatelessWidget implements PreferredSizeWidget {
  
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: USizes.md),
    child: AppBar(
      automaticallyImplyLeading: false,
      leading: ,
      ,,
    ),
  );
}

