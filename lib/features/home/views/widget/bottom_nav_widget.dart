import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../provider/active_tab_provider.dart';

class NavWidget extends ConsumerWidget {
  const NavWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: CSizes.defaultSpacing - 10,
        vertical: CSizes.sm + 5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: CSizes.navBarHeight,
            decoration: BoxDecoration(
              color: CColors.mainBlack,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: GNav(
                selectedIndex: ref.watch(activeNavTabProvider).toInt(),
                padding: const EdgeInsets.all(18),
                textStyle: GoogleFonts.poppins(
                  fontSize: 16,
                  color: CColors.mainBlack,
                ),
                gap: CSizes.sm,
                mainAxisAlignment: MainAxisAlignment.center,
                iconSize: 24,
                color: CColors.mainWhite,
                activeColor: CColors.mainBlack,
                tabBackgroundColor: CColors.mainWhite,
                onTabChange: (index) {
                  ref.read(activeNavTabProvider.notifier).toPage(index);
                },
                tabs: const [
                  GButton(
                    icon: Icons.home_rounded,
                    text: 'Home',
                    textColor: CColors.mainBlack,
                  ),
                  GButton(
                    icon: Icons.bar_chart_rounded,
                    text: 'Account',
                  ),
                  GButton(
                    icon: Icons.person_outline_sharp,
                    text: 'Profile',
                  ),
                ],
              ),
            ),
          ),
          IconButton(
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(
                const Size(CSizes.navBarHeight, CSizes.navBarHeight),
              ),
              backgroundColor: MaterialStateProperty.all(CColors.mainBlack),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
            onPressed: () {},
            icon: const FaIcon(
              FontAwesomeIcons.plus,
            ),
          ),
        ],
      ),
    );
  }
}
