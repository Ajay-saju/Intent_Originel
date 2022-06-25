import 'package:flutter/material.dart';

class ProfileDivider extends StatelessWidget {
  const ProfileDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: 1,
      color: Colors.grey,
    );
  }
}