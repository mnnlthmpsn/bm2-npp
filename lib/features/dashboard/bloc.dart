import 'package:bm24_ddss/features/dashboard/events.dart';
import 'package:bm24_ddss/features/dashboard/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc(): super(const DashboardState()) {
    on<ActivePageChanged>(_onActivePageChanged);
  }

  void _onActivePageChanged(ActivePageChanged event, Emitter<DashboardState> emit){
    emit(state.copyWith(currentPage: event.currentPage ));
  }
}