import 'dart:convert';
import 'package:flutter/services.dart';

class FFDevEnvironmentValues {
  static const String currentEnvironment = 'UAT';
  static const String environmentValuesPath =
      'assets/environment_values/environment.json';

  static final FFDevEnvironmentValues _instance =
      FFDevEnvironmentValues._internal();

  factory FFDevEnvironmentValues() {
    return _instance;
  }

  FFDevEnvironmentValues._internal();

  Future<void> initialize() async {
    try {
      final String response =
          await rootBundle.loadString(environmentValuesPath);
      final data = await json.decode(response);
      _url = data['url'];
      _applicationId = data['applicationId'];
      _apiKey = data['apiKey'];
      _applicationSecret = data['applicationSecret'];
      _initializeFaceIDURL = data['initializeFaceIDURL'];
      _validateFaceIDURL = data['validateFaceIDURL'];
      _srURL = data['srURL'];
      _erURL = data['erURL'];
      _baseUrl = data['baseUrl'];
    } catch (e) {
      print('Error loading environment values: $e');
    }
  }

  String _url = '';
  String get url => _url;

  String _applicationId = '';
  String get applicationId => _applicationId;

  String _apiKey = '';
  String get apiKey => _apiKey;

  String _applicationSecret = '';
  String get applicationSecret => _applicationSecret;

  String _initializeFaceIDURL = '';
  String get initializeFaceIDURL => _initializeFaceIDURL;

  String _validateFaceIDURL = '';
  String get validateFaceIDURL => _validateFaceIDURL;

  String _srURL = '';
  String get srURL => _srURL;

  String _erURL = '';
  String get erURL => _erURL;

  String _baseUrl = '';
  String get baseUrl => _baseUrl;
}
