import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components/notification_screen.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const NotificationScreen()),
        );
      },
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: SvgPicture.asset(
              'assets/icons/notification.svg',
              width: 21,
              height: 21,
            ),
          ),
        ],
      ),
    );
  }
}
