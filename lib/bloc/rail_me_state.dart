part of 'rail_me_bloc.dart';

abstract class RailMeState extends Equatable {
  const RailMeState();
  
  @override
  List<Object> get props => [];
}

class RailMeInitial extends RailMeState {}

class RailMeLoading extends RailMeState {}

class RailSuccess extends RailMeState {
  // final RailMeModel? response;
  // RailMESuccess ({this.response});

}

class RailMeFailed extends RailMeState {
  final String? error;
  RailMeFailed({
    this.error,
    });
 
 
}
