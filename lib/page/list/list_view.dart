import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../statis.dart';
import 'list_logic.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logic = Get.put(ListLogic());
    final state = Get.find<ListLogic>().state;

    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(Static.fullPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Column(
              children: [Text('list page')],
            ))
          ],
        ),
      ),
    ));
  }
}
