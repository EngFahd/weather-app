import 'package:weather_app/models/weather_model.dart';

abstract class WeatherState {}

class WeatherIntial extends WeatherState {}

class LoadingState extends WeatherState {}

class SuccessState extends WeatherState {
  WeatherModel weatherMode;
  SuccessState({required this.weatherMode});
}

class FailerState extends WeatherState {}
