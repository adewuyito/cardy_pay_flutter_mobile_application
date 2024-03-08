import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ActiveNavTab extends StateNotifier<int> {
  ActiveNavTab() : super(0);

  PageController pageController = PageController();

  PageController get navController => pageController;

  set setState(int index) => state = index;

  void toPage(int pageindex) {
    if (state != pageindex) {
      pageController.animateToPage(
        pageindex,
        duration: const Duration(milliseconds: 200),
        curve: Curves.ease,
      );
      setState = pageindex;
    }
  }
}


// class NewIndex extends StateNotifier<int> {
//   NewIndex() : super(0);
//   set setState(int index) => state = index;
//   int get providerState => state;
//   void setStateValue(int index) {
//     setState = index;
//   }
// }
