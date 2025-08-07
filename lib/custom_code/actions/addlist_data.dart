// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future addlistData(
  int index,
  String updatedvalue,
  List<String> keys,
) async {
  // Add your function code here!
  //  print("Index: $index");
  // Fields that should be stored as integers
  final Set<String> intFields = {
    'READ_TIMEOUT',
    'CONNECT_TIMEOUT',
    'MAX_CONNECTIONS',
    'MAX_PER_ROUTE',
    'PROXY_PORT'
  };

  print("Updated Value: $updatedvalue");
  print("Key List: $keys");

  Map<String, dynamic> result = {};

  if (FFAppState().addjsonconfig == null ||
      FFAppState().addjsonconfig.isEmpty) {
    for (int i = 0; i < keys.length; i++) {
      final key = keys[i];
      if (i == index) {
        result[key] = intFields.contains(key)
            ? int.tryParse(updatedvalue) ?? 0
            : updatedvalue;
      } else {
        result[key] = intFields.contains(key) ? 0 : "";
      }
    }
    print("Created new JSON map with updated index and others blank.");
  } else {
    // Decode existing JSON and update the specific field
    result = jsonDecode(FFAppState().addjsonconfig);
    final fieldKey = keys[index];
    result[fieldKey] = intFields.contains(fieldKey)
        ? int.tryParse(updatedvalue) ?? 0
        : updatedvalue;
    print("Updated existing JSON with new value at index.");
  }

  // Encode to JSON and update app state
  final jsonString = jsonEncode(result);
  FFAppState().addjsonconfig = jsonString;

  print("Updated JSON:");
  print(jsonString);
}
