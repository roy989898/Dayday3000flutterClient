import 'package:get/get.dart';

import 'colors.dart';
import 'statis.dart';

void showDialog(String text, String title) {
  Get.defaultDialog(
      confirmTextColor: white,
      onConfirm: () => Get.back(),
      middleText: text,
      title: title);
}
