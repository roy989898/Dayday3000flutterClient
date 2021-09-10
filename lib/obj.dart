import 'package:cloud_firestore/cloud_firestore.dart';

class Stock {
  bool crash_finish;
  double current_lower_price;
  Timestamp current_lower_price_date;
  Timestamp enter_crash_date;
  double enter_crash_price;
  double high_ref_price;
  Timestamp high_ref_price_date;
  String name;

  Stock(
      this.crash_finish,
      this.current_lower_price,
      this.current_lower_price_date,
      this.enter_crash_date,
      this.enter_crash_price,
      this.high_ref_price,
      this.high_ref_price_date,
      this.name);
}
