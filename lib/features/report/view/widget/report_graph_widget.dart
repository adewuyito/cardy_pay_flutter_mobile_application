import 'package:cardy_pay_mobile_application/utils/constants/colors.dart';
import 'package:cardy_pay_mobile_application/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../home/provider/active_tab_provider.dart';

class ReportGraphWidget extends ConsumerStatefulWidget {
  const ReportGraphWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ReportGraphWidgetState();
}

class _ReportGraphWidgetState extends ConsumerState<ReportGraphWidget> {
  Color whatColor({required bool isDarkMode}) {
    if (isDarkMode) {
      return CColors.mainWhite;
    }
    return CColors.mainBlack;
  }

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = CHelperFunctions.isDarkMode(context);
    return Container(
      color: whatColor(isDarkMode: isDarkMode),
      child: const Placeholder(),
    );
  }
}
