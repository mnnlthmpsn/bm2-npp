import 'package:bm24_ddss/features/dashboard/bloc.dart';
import 'package:bm24_ddss/features/dashboard/data/menu.dart';
import 'package:bm24_ddss/features/dashboard/data/pages.dart';
import 'package:bm24_ddss/features/dashboard/events.dart';
import 'package:bm24_ddss/features/dashboard/state.dart';
import 'package:bm24_ddss/shared/appBar.dart';
import 'package:bm24_ddss/utils/app_colors.dart';
import 'package:bm24_ddss/utils/app_dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar(),
        body: _body(),
        bottomNavigationBar: _bottomNavigationBar(),
      ),
    );
  }

  void _onIconTapped(int pageIndex, BuildContext context) {
    context
        .read<DashboardBloc>()
        .add(ActivePageChanged(currentPage: pageIndex));
  }

  Widget _body() {
    return BlocBuilder<DashboardBloc, DashboardState>(
        builder: (BuildContext context, DashboardState state) {
      return pages.elementAt(context.read<DashboardBloc>().state.currentPage);
    });
  }

  Widget _bottomNavigationBar() {
    return BlocBuilder<DashboardBloc, DashboardState>(
        builder: (BuildContext context, DashboardState state) {
      return BottomNavigationBar(
        backgroundColor: AppColors.kPrimaryColor,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        showSelectedLabels: true,
        selectedItemColor: AppColors.kWhiteColor,
        unselectedItemColor: AppColors.kWhiteColor,
        selectedFontSize: 10,
        iconSize: AppDimens.kDefaultIconSize,
        showUnselectedLabels: false,
        onTap: (value) => _onIconTapped(value, context),
        currentIndex: context.read<DashboardBloc>().state.currentPage,
        items: menuItems.map((e) {
          return BottomNavigationBarItem(
              icon: Icon(e['icon']), label: e['label']);
        }).toList(),
      );
    });
  }
}
