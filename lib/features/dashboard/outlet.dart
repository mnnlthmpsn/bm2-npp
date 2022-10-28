import 'package:bm24_ddss/features/dashboard/bloc.dart';
import 'package:bm24_ddss/features/dashboard/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

BlocProvider dashboardOutlet() {
  return BlocProvider<DashboardBloc>(
      create: (BuildContext context) {
        return DashboardBloc();
      },
      child: const DashboardScreen());
}
