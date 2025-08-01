// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:universal_html/html.dart' as html;

Future<String> generateWebDeviceHashWithTime() async {
  // Add your function code here!
  final userAgent = html.window.navigator.userAgent;
  final platform = html.window.navigator.platform ?? '';
  final screenWidth = html.window.screen?.width ?? 0;
  final screenHeight = html.window.screen?.height ?? 0;
  final timezoneOffset = DateTime.now().timeZoneOffset.inMinutes;

  final currentTime = DateTime.now().toIso8601String(); // precise timestamp

  // Combine all into one raw string
  final rawData =
      '$userAgent|$platform|$screenWidth|$screenHeight|$timezoneOffset|$currentTime';

  // Generate SHA-256 hash
  final bytes = utf8.encode(rawData);
  final digest = sha256.convert(bytes);

  return digest.toString();
}
