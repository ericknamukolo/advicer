import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'advicer_state.dart';

class AdvicerCubit extends Cubit<AdvicerState> {
  AdvicerCubit() : super(AdvicerInitial());

  Future<void> requestAdvice() async {
    try {
      emit(AdviceStateLoading());

      await Future.delayed(const Duration(seconds: 3), () {
        emit(const AdviceStateLoaded(advice: 'Yo ma nigga'));
      });
    } catch (e) {
      emit(AdviceStateError(message: e.toString()));
    }
  }
}
