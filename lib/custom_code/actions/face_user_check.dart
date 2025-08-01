// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

//
import 'dart:html' as html;
import 'package:jwt_decoder/jwt_decoder.dart';

Future<FaceUserStruct> faceUserCheck() async {
  // Add your function code here!
  try {
    final String? token = html.window.sessionStorage['rtn'];
    if (token == null || token.isEmpty) {
      return FaceUserStruct(isLoggedIn: false, userId: "");
    } else {
      final Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
      final String sessionUser = decodedToken["username"] ?? "";
      final String userId = getId(sessionUser);

      bool isTokenExpired = JwtDecoder.isExpired(token);

      final bool isLoggedIn = !isTokenExpired && userId.isNotEmpty;

      return FaceUserStruct(isLoggedIn: isLoggedIn, userId: userId);
    }
  } catch (e) {
    print("error : $e");
    return FaceUserStruct(isLoggedIn: false, userId: "");
  }
}

String getId(String userId) {
  try {
    if (userId.isEmpty) return "";
    String id = userId.split("@").first;
    return id;
  } catch (e) {
    return "";
  }
}
