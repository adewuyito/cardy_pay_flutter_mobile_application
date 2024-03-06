import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import 'widget/two_side_text_widget.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});
  // : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 16);
  // final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.symmetric(horizontal: CSizes.defaultSpacing - 2),
      color: CColors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWithEdit(
                firstString: 'Welcome, ',
                secondString: 'Timothy!',
              ),
              Icon(
                Icons.notifications_none_rounded,
                size: 26,
                color: CColors.mainBlack,
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Divider(
            color: CColors.mainGrey.withAlpha(100),
          ),
        ],
      ),
    );
  }
}
