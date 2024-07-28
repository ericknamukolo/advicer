import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'advicer_event.dart';
part 'advicer_state.dart';

class AdvicerBloc extends Bloc<AdvicerEvent, AdvicerState> {
  AdvicerBloc() : super(AdvicerInitial()) {
    on<AdviceRequestedEvent>((event, emit) async {
      try {
        emit(AdviceStateLoading());

        await Future.delayed(const Duration(seconds: 3), () {
          emit(AdviceStateLoaded(advice: 'Yo ma nigga'));
        });
      } catch (e) {
        emit(AdviceStateError(message: e.toString()));
      }
    });

    on((event, emit) => {});
  }
}
