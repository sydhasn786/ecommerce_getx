import 'package:flutter/material.dart';
import 'package:getx/common/widgets/custom_shapes/primary_header_container.dart';
import 'package:getx/common/widgets/images/circular_image.dart';
import 'package:getx/features/personalization/screens/profile/widgets/profile_primary_widgets.dart';
import 'package:getx/utils/constants/images.dart';
import 'package:getx/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          UProfilePrimaryHeader(),

            ListTile(
            title: Text('Unknown Profile'),
            subtitle: Text('ali@gmail.com'),
          ),
          
        ],
      ),
    );
  }
}

