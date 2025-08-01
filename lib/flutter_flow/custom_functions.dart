import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

List<DataTableModelStruct>? toDoListFunc(List<TodoListModelStruct>? dataList) {
  List<DataTableModelStruct>? result = [];

  for (TodoListModelStruct? item in dataList ?? []) {
    result.add(
      DataTableModelStruct(
        modelList: [
          item?.title ?? "",
          "${item?.id}",
          "${item?.userId}",
          "${item?.completed}",
          item?.title ?? "",
          "${item?.id}",
          "${item?.userId}",
          "${item?.completed}",
        ],
      ),
    );
  }
  print("pavan${result}");

  return result;
//fghjk
}

DataTableNewModelStruct? dynamicDataTableConvert(dynamic json) {
  // Extract headers from metaData
  List<String> headers = (json['metaData'] as List<dynamic>)
      .map((item) => item['name'].toString())
      .toList();

  // Extract rows from data
  List<DataTableModelStruct> rows = (json['data'] as List<dynamic>).map((item) {
    List<String> values =
        headers.map((field) => item[field]?.toString() ?? '').toList();
    return DataTableModelStruct(modelList: values);
  }).toList();

  // Return a single DataTableNewModelStruct in a list
  return DataTableNewModelStruct(headers: headers, value: rows);
}

DataTableNewModelStruct? dynamicDataTableConvertCopy(dynamic json) {
  // Extract headers from the JSON keys
  List<String> headers = (json as Map<String, dynamic>).keys.toList();

  // Extract single row values in the same order
  List<String> values =
      headers.map((key) => json[key]?.toString() ?? '').toList();

  // Create one DataTableModelStruct row
  List<DataTableModelStruct> rows = [
    DataTableModelStruct(modelList: values),
  ];
  print(DataTableNewModelStruct(headers: headers, value: rows));
  // Return the structured result
  return DataTableNewModelStruct(headers: headers, value: rows);
}

String? jsonToCleanData(String? json) {
  if (json == null) return null;

  // Parse the JSON
  final parsed = jsonDecode(json);

  // Local function to extract meta and field data
  Map<String, dynamic> extractMetaAndData(Map<String, dynamic> json) {
    final List<dynamic> metaData = json['metaData'];
    final List<dynamic> dataList = json['data'];

    final List<String> metaNames = metaData
        .map((item) => item['name'].toString())
        .where((name) => name.trim() != ',' && name.trim().isNotEmpty)
        .toList();

    final Map<String, List<dynamic>> fieldData = {};

    for (final data in dataList) {
      data.forEach((key, value) {
        fieldData.putIfAbsent(key, () => []).add(value);
      });
    }

    return {
      'metaNames': metaNames,
      'fieldData': fieldData,
    };
  }

  // Use the local function
  final result = extractMetaAndData(parsed);
  final metaNames = result['metaNames'] as List<String>;
  final fieldData = result['fieldData'] as Map<String, List<dynamic>>;

  final buffer = StringBuffer();

  buffer.writeln('MetaData Names:');
  buffer.writeln(metaNames.join(', '));
  buffer.writeln('\nField-wise Data:');

  fieldData.forEach((key, values) {
    buffer.writeln('$key: ${values.join(', ')}');
  });

  return buffer.toString();
}

DataTableNewModelStruct? assignEditedFieldVal(DataTableNewModelStruct? data) {
  return data;
}

String addEmail(String input) {
  if (input.isEmpty) return '';

  if (input.toLowerCase().startsWith('ban')) {
    return '${input.toUpperCase()}@ext.icicibank.com';
  }
  return '${input.toUpperCase()}@icicibank.com';
}

DataTableModelStruct newCustomFunction(
  dynamic data,
  String value,
  int index,
  List<String> original,
) {
  return DataTableModelStruct();
}

String extractIdHostUrl(
  String rawJson,
  String value,
) {
  print("rawJson");
  print(rawJson);
  print(value);
  try {
    final decoded = json.decode(rawJson);
    final result = decoded[value];
    print(result);
    return result != null ? result.toString() : '';
  } catch (e) {
    return '';
  }
}

List<dynamic> filterRecordsByCreatedBy(
  List<dynamic> dataList,
  String createdBy,
) {
  // Filter out records where createdBy matches the input
  print('dataList: $dataList');
  final filteredList = dataList
      .where((item) {
        return item is Map<String, dynamic> && item['createdBy'] != createdBy;
      })
      .map((item) => Map<String, dynamic>.from(item))
      .toList();

  print('Filtered Records: $filteredList');

  return filteredList;
}

String idReturn(
  String data,
  String value,
) {
  //print(data);
  print(value);

  // Decode JSON string to Map
  final Map<String, dynamic> jsonMap = jsonDecode(data);

  // Return the value for the given key
  print(data);
  print(jsonMap[value] ?? '');
  return jsonMap[value] ?? '';

  // print(data);
  // print(value);
  // return "";
}

dynamic rawjsonTojson(dynamic rawjson) {
  final rawJsonStr = rawjson['RAW_JSON'];
  final Map<String, dynamic> rawJsonMap = jsonDecode(rawJsonStr);

  final keyMapping = {
    "id": "ID",
    "connectTimeout": "CONNECT_TIMEOUT",
    "enableProxy": "ENABLE_PROXY",
    "host": "HOST",
    "keystorePassword": "KEYSTORE_PASSWORD",
    "keystorePath": "KEYSTORE_PATH",
    "maxConnections": "MAX_CONNECTIONS",
    "maxPerRoute": "MAX_PER_ROUTE",
    "method": "METHOD",
    "protocol": "PROTOCOL",
    "proxyAddress": "PROXY_ADDRESS",
    "proxyPort": "PROXY_PORT",
    "readTimeout": "READ_TIMEOUT",
    "tlsVersion": "TLS_VERSION",
    "truststorePassword": "TRUSTSTORE_PASSWORD",
    "truststorePath": "TRUSTSTORE_PATH",
    "url": "URL",
  };

  final transformed = {
    for (var entry in rawJsonMap.entries)
      keyMapping[entry.key] ?? entry.key.toUpperCase(): entry.value
  };

  return transformed;
}
