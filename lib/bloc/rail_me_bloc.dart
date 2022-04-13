import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'rail_me_event.dart';
part 'rail_me_state.dart';

class RailMeBloc extends Bloc<RailMeEvent, RailMeState> {
  RailMeBloc() : super(RailMeInitial()) {
    on<RailMeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
