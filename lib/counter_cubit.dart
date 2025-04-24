import 'package:hydrated_bloc/hydrated_bloc.dart';

class CounterCubit extends HydratedCubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);

  @override
  int? fromJson(Map<String, dynamic> json) {
    return json['counter'] as int?;
  }

  @override
  Map<String, dynamic>? toJson(int state) {
    return {'counter': state};
  }
}
