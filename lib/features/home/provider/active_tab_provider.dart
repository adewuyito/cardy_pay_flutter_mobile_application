import 'package:cardy_pay_mobile_application/features/home/notifier/active_tab_state_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


final activeNavTabProvider = StateNotifierProvider<ActiveNavTab, int>((ref) => ActiveNavTab());
