part of 'advicer_bloc.dart';

@immutable
sealed class AdvicerEvent extends Equatable {}

class AdviceRequestedEvent extends AdvicerEvent {
  @override
  List<Object?> get props => [];
}
