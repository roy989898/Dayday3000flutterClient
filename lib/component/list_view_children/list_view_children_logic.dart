import 'dart:async';

import 'package:get/get.dart';

import 'list_view_children_state.dart';

class ListViewChildrenLogic extends GetxController {
  final ListViewChildrenState state = ListViewChildrenState();
  final streamSubs = List<StreamSubscription>.empty();
  final String docId;

  ListViewChildrenLogic(this.docId);

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    streamSubs.forEach((element) {
      element.cancel();
    });
    super.onClose();
  }
}
