import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

/// 숫자 포맷 편집
var nFromat = NumberFormat('###,###,###,###');

void showToast(String msg){
  Fluttertoast.cancel();
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT
  );
}