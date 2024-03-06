import 'package:hooks_riverpod/hooks_riverpod.dart';

class ActiveNavTab extends StateNotifier<int> {
  ActiveNavTab() : super(0);

  set setState(int index) => state = index;
}


// class NewIndex extends StateNotifier<int> {
//   NewIndex() : super(0);
//   set setState(int index) => state = index;
//   int get providerState => state;
//   void setStateValue(int index) {
//     setState = index;
//   }
// }
