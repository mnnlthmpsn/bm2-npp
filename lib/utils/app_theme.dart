import 'package:bm24_ddss/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_dimens.dart';

class AppTheme {
  static ThemeData get appTheme {
    return ThemeData(
        scaffoldBackgroundColor: AppColors.kWhiteColor,
        backgroundColor: Colors.white,
        textTheme: GoogleFonts.openSansTextTheme(TextTheme(
          bodyText1: kNormalTextStyle,
          bodyText2: kNormalTextStyle,
        )),
        appBarTheme:
            const AppBarTheme(systemOverlayStyle: SystemUiOverlayStyle.dark));
  }

  static TextStyle kNormalTextStyle = const TextStyle(
      fontSize: AppDimens.kBodyTextFont, color: AppColors.kTextColor);
}
