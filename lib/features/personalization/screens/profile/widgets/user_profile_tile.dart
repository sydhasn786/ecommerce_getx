import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/features/personalization/screens/edit_profile/edit_profile.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text('Unknown Profile'),
      subtitle: Text('ali@gmail.com'),
      trailing: IconButton(onPressed: () => Get.to(() => EditProfileScreen()), icon: Icon(Icons.edit)),
    );
  }
}
