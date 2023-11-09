import 'package:trips/cubit/app_cubit_states.dart';
import 'package:bloc/bloc.dart';
import 'package:trips/model/data_model.dart';
import 'package:trips/services/data_Services.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits({required this.data}) : super(InitialState()) {
    emit(WelcomeState());
  }
  final DataServices data;
  late final places;

  void getData() async {
    try {
      emit(LoadingState());
      places = await data.getInfo();
      emit(LoadedState(places));
    } catch (e) {}
  }

  detailPage(DataModel data) {
    emit(DetailState(data));
  }

  goHome() {
    emit(DetailState(places));
  }
}
