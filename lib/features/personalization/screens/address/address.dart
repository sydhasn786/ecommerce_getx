import 'package:flutter/material.dart';
import 'package:getx/common/style/padding.dart';
import 'package:getx/common/widgets/appbar/appbar.dart';
import 'package:getx/common/widgets/custom_shapes/rounded_container.dart';
import 'package:getx/features/personalization/screens/address/widgets/single_address.dart';
import 'package:getx/utils/constants/sizes.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///AppBar///
      appBar: UAppBar(
        title: Text(
          "Addresses",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),

      ///-----------[body]-----------///
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [
              USingleAddress(isSelected: true),
            ],
          ),
        ),
      ),
    );
  }
}

