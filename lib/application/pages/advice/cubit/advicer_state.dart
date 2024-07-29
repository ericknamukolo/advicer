part of 'advicer_cubit.dart';

sealed class AdvicerState extends Equatable {
  const AdvicerState();

  @override
  List<Object?> get props => [];
}

final class AdvicerInitial extends AdvicerState {}

class AdviceStateLoading extends AdvicerState {}

class AdviceStateLoaded extends AdvicerState {
  final String advice;
  const AdviceStateLoaded({required this.advice});

  @override
  List<Object?> get props => [advice];
}

class AdviceStateError extends AdvicerState {
  final String message;
  const AdviceStateError({required this.message});
  @override
  List<Object?> get props => [message];
}
