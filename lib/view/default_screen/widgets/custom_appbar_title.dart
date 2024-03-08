import 'package:flutter/material.dart';
import 'package:play_store/core/constants/color_constants.dart';
import 'package:play_store/core/constants/image_constants.dart';

class CustomAppbarTitle extends StatelessWidget {
  const CustomAppbarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: <Widget>[
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: ColorConstants.primaryShadeOfBlue.withOpacity(0.4),
                borderRadius: BorderRadius.circular(24)),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            child: const Row(
              children: <Widget>[
                Icon(
                  Icons.search_rounded,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Search apps & games",
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                Spacer(),
                Icon(Icons.mic_none),
              ],
            ),
          )),
          const SizedBox(
            width: 15,
          ),
          const Stack(
            children: [
              Icon(Icons.notifications_none_outlined),
              Positioned(
                right: 0,
                top: 2,
                child: CircleAvatar(
                  radius: 6,
                  backgroundColor: ColorConstants.primaryBlue,
                ),
              )
            ],
          ),
          const SizedBox(
            width: 15,
          ),
          const CircleAvatar(
            radius: 14,
            backgroundImage: AssetImage(ImageConstants.userOneProfilePic),
          )
        ],
      ),
    );
  }
}
