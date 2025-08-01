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
import 'dart:html' as hhtml;
import 'dart:js' as jjs;

Future loadAndStartFaceID(
  BuildContext context,
  String userName,
  String applicationId,
  String appSecretKey,
  String initializeFaceIDURL,
  String validateFaceIDURL,
  String srURL,
  String erURL,
  String apiKey,
) async {
  // Add your function code here!
  try {
    if (hhtml.document.getElementById('faceid-sdk') != null) {
      _callInitializeFaceID(applicationId, apiKey, appSecretKey, userName,
          srURL, erURL, initializeFaceIDURL, validateFaceIDURL);
      return;
    }

    final cryptoScript = hhtml.ScriptElement()
      ..id = 'crypto-sdk'
      ..src = 'assets/js/crypto.js'
      ..type = 'application/javascript'
      ..defer = true;

    cryptoScript.onLoad.listen((event) {
      final faceIdScript = hhtml.ScriptElement()
        ..id = 'faceid-sdk'
        ..src = 'assets/js/faceid-sdk.js'
        ..type = 'application/javascript'
        ..defer = true;

      faceIdScript.onLoad.listen((event) {
        // Now that both scripts are loaded, call FaceID
        _callInitializeFaceID(applicationId, apiKey, appSecretKey, userName,
            srURL, erURL, initializeFaceIDURL, validateFaceIDURL);
      });

      hhtml.document.body!.append(faceIdScript);
    });

    hhtml.document.body!.append(cryptoScript);
  } catch (e) {
    if (context.mounted)
      showDialog(
          context: context,
          builder: (c) => AlertDialog(
                title: const Text("Error"),
                content: const Text(
                    "Something went wrong while authenticating.please try again after some time"),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(c),
                    child: Text('Ok'),
                  )
                ],
              ),
          barrierDismissible: false);
  }
}

void _callInitializeFaceID(String appId, apiKey, appSecret, userName, srUrl,
    erUrl, initUrl, validUrl) {
  final config = jjs.JsObject.jsify({
    'applicationId': appId,
    'applicationSecret': appSecret,
    'username': userName,
    'srURL': srUrl,
    'erURL': erUrl,
    'initializeFaceIDURL': initUrl,
    'validateFaceIDURL': validUrl,
    // 'headerName': apiKey,
    // 'headerValue': 'your-api-key',
  });

  jjs.context.callMethod('FaceID_initializeFaceID', [config]);
}
