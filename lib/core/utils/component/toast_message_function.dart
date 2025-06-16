
import 'package:auvent_flutter_internship_assessment/core/utils/colors/colors.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/text_styles/font_manager.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showToastMessage({required String message}){
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      textColor: kWhiteColor,
      backgroundColor: kPurpleColor,
      fontSize: FontSize.s14
  );
}