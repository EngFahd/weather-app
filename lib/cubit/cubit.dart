import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/state.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class WeatherCubite extends Cubit<WeatherState> {
  // WeatherCubite() : super(WeatherState);

  WeatherService weatherService;
  String? cityName;
  WeatherModel? weatherModel;
  WeatherCubite(this.weatherService) : super(WeatherIntial());

  void getWeatherCubie({required String cityName}) async {
    try {
      emit(LoadingState());
      weatherModel = await WeatherService().getWeather(cityName: cityName);
      emit(SuccessState(weatherMode: weatherModel!));
    } on Exception catch (e) {
      emit(FailerState());
    }
  }
}
