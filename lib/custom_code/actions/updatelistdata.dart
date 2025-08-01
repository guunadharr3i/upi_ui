// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future updatelistdata(
  int index,
  String updatedvalue,
  List<String> data,
  List<String> key,
) async {
  // Add your function code here!
  print(index);
  print(updatedvalue);
  print(data);
  print(key);

// Step 1: Update the value in the data list if index is valid
  if (index >= 0 && index < data.length) {
    data[index] = updatedvalue;
  }

  Map<String, dynamic> result = {};

  // Step 2: Build new JSON or update existing
  if (FFAppState().apiConfigJson == null ||
      FFAppState().apiConfigJson.isEmpty) {
    for (int i = 0; i < key.length && i < data.length; i++) {
      result[key[i]] = data[i].toString(); // Ensure value is a String
    }
    print("tttt (new map):");
  } else {
    // Decode and update only one field using original key
    result = jsonDecode(FFAppState().apiConfigJson);
    final fieldKey = key[index];
    result[fieldKey] = updatedvalue.toString(); // Update specific field
    print("rrrrr (updated map):");
  }

  // Encode to JSON and update app state
  final jsonString = jsonEncode(result);
  FFAppState().apiConfigJson = jsonString;

  print("Updated JSON:");
  print(jsonString);
}

/// Convert keys like MAX_CONNECTIONS → maxConnections
String _camelCase(String input) {
  final parts = input.split('_');
  return parts.first +
      parts.skip(1).map((e) => e[0].toUpperCase() + e.substring(1)).join();
}
