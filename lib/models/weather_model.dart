class WeatherModel {
  final double temperature;
  final String condition;
  final int humidity;
  final String? iconUrl;

  WeatherModel({
    required this.temperature,
    required this.condition,
    required this.humidity,
    this.iconUrl,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      temperature: json['main']['temp'].toDouble(),
      condition: json['weather'][0]['description'],
      humidity: json['main']['humidity'],
      iconUrl: 'https://openweathermap.org/img/wn/${json['weather'][0]['icon']}@2x.png',
    );
  }
}