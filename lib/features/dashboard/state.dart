import 'package:equatable/equatable.dart';

class DashboardState extends Equatable {
  final int currentPage;

  const DashboardState({ this.currentPage = 0 });

  DashboardState copyWith({ int? currentPage }) {
    return DashboardState(
        currentPage: currentPage ?? this.currentPage
    );
  }

  @override
  List<Object> get props => [currentPage];
}