import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'colors.dart';
import 'statis.dart';

void showDialog(String text, String title) {
  Get.defaultDialog(
      confirmTextColor: white,
      onConfirm: () => Get.back(),
      middleText: text,
      title: title);
}

String formatNum(double inn) {
  var f = NumberFormat("###.0###", "en_US");
  return f.format(inn);
}

String formatTimestamp(Timestamp tt) {
  return DateFormat('dd/MM/yyyy').format(tt.toDate());
}
