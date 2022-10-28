import 'package:bm24_ddss/utils/app_colors.dart';
import 'package:bm24_ddss/utils/app_dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

PreferredSizeWidget CustomAppBar() {
  return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
    flexibleSpace: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            _menu(),
            _welcome()
          ],
        ),
        Row(
          children: [_settings(), _help()],
        )
      ],
    ),
  );
}

Widget _menu() {
  return IconButton(
      iconSize: AppDimens.kDefaultIconSize,
      onPressed: () {},
      icon: const Icon(
        FeatherIcons.menu,
        color: AppColors.kTextColor,
      ));
}

Widget _welcome() {
  return Text('Welcome Daniel');
}

Widget _settings() {
  return IconButton(
      iconSize: AppDimens.kDefaultIconSize,
      onPressed: () {},
      icon: const Icon(FeatherIcons.settings));
}

Widget _help() {
  return IconButton(
      iconSize: AppDimens.kDefaultIconSize,
      onPressed: () {},
      icon: const Icon(FeatherIcons.helpCircle));
}
