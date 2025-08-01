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
  print("Updated Value: $updatedvalue");
  print("Key List: $keys");

  Map<String, dynamic> result = {};

  // Case 1: JSON is null or empty — create full key map with blank values except the current key
  if (FFAppState().addjsonconfig == null ||
      FFAppState().addjsonconfig.isEmpty) {
    for (int i = 0; i < keys.length; i++) {
      result[keys[i]] = (i == index) ? updatedvalue.toString() : "";
    }
    print("Created new JSON map with updated index and others blank.");
  } else {
    // Case 2: JSON already exists — decode and update only the selected field
    result = jsonDecode(FFAppState().addjsonconfig);
    final fieldKey = keys[index];
    result[fieldKey] = updatedvalue.toString();
    print("Updated existing JSON with new value at index.");
  }

  // Encode to JSON and update app state
  final jsonString = jsonEncode(result);
  FFAppState().addjsonconfig = jsonString;

  print("Updated JSON:");
  print(jsonString);
}
