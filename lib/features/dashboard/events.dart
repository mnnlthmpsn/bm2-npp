import 'package:equatable/equatable.dart';

abstract class DashboardEvent extends Equatable {
  const DashboardEvent();
}

class ActivePageChanged extends DashboardEvent {
  final int currentPage;

  const ActivePageChanged({ required this.currentPage });

  @override
  List<Object> get props => [currentPage];
}