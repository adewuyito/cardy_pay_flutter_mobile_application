import 'package:cardy_pay_mobile_application/common/widget/section_global_widget.dart';
import 'package:cardy_pay_mobile_application/features/home/views/widget/account_balance_text.dart';
import 'package:cardy_pay_mobile_application/features/home/views/widget/long_card_info_widget.dart';
import 'package:cardy_pay_mobile_application/features/home/views/widget/mini_card_widget.dart';
import 'package:cardy_pay_mobile_application/features/home/views/widget/token_info_small_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../utils/constants/colors.dart';
import 'app_bar_widget.dart';
import 'widget/bottom_nav_widget.dart';

class HomeBuilderView extends ConsumerWidget {
  const HomeBuilderView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      backgroundColor: CColors.mainWhite,
      appBar: MyAppBar(),
      bottomNavigationBar: NavWidget(),
      body: SectionWidget(
        withLabel: false,
        children: [
          AccountBalanceText(balanceText: "13,553.00"),
          SizedBox(
            height: 30,
          ),
          Flex(
            direction: Axis.horizontal,
            children: [
              Expanded(child: SmallCardWidget()),
              SizedBox(width: 15),
              Expanded(child: SmallCardWidget()),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          SectionWidget(
            secondry: "Today",
            withPadding: false,
            withLabel: true,
            label: "Token Bonus",
            children: [
              Flex(
                mainAxisSize: MainAxisSize.max,
                direction: Axis.horizontal,
                children: [
                  LongCardWidget(),
                  SizedBox(width: 20),
                  Flex(
                    direction: Axis.vertical,
                    children: [
                      SmallTokenWidget(),
                      SizedBox(height: 15),
                      SmallTokenWidget()
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

// AppBar(
//         backgroundColor: CColors.mainWhite,
//         title: const Padding(
//           padding: EdgeInsets.only(top: 35.0),
//           child: TextWithEdit(
//             firstString: 'Welcome, ',
//             secondString: 'Timothy!',
//           ),
//         ),
//         bottom: PreferredSize(
//           preferredSize: const Size.fromHeight(20.0),
//           child: Container(
//             width: MediaQuery.of(context).size.width * 0.9,
//             height: 1,
//             color: CColors.mainGrey.withOpacity(0.4),
//           ),
//         ),
//         actions: const [
//           Padding(
//             padding: EdgeInsets.only(
//               top: 30.0,
//               right: 15,
//             ),
//             child: Icon(
//               Icons.notifications_none_rounded,
//               size: 26,
//               color: CColors.mainBlack,
//             ),
//           ),
//         ],
//       ),

//  const NavWidget(),

// SectionWidget(
//             children: [
//               GridView.custom(
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                 ),
//                 childrenDelegate: SliverChildListDelegate.fixed(
//                   [
// LongCardWidget(
//   height: MediaQuery.of(context).size.width * 0.70,
//   width: MediaQuery.of(context).size.width * 0.4,
// ),
//                   ],
//                 ),
//               ),
//             ],
//           ),

// Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(100),
//         ),
//         padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//         child: Consumer(builder: (context, ref, child) {
//           int navIndex = ref.watch(navIndexProvider);
//           return NavigationBar(
//             selectedIndex: navIndex.toInt(),
//             labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
//             onDestinationSelected: (index) {
//               ref.read(navIndexProvider.notifier).setStateValue(index);
//             },
//             destinations: const [
//               NavigationDestination(
//                 icon: FaIcon(FontAwesomeIcons.person),
//                 label: 'Home',
//               ),
//               NavigationDestination(
//                 icon: FaIcon(FontAwesomeIcons.chartBar),
//                 label: 'Chart',
//               ),
//               NavigationDestination(
//                 icon: FaIcon(FontAwesomeIcons.house),
//                 label: 'Profile',
//               ),
//             ],
//           );
//         }),
//       ),
