import 'package:upi_ui/backend/api_requests/_/api_manager.dart';

import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/editable_field_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'add_host_fields_widget.dart' show AddHostFieldsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddHostFieldsModel extends FlutterFlowModel<AddHostFieldsWidget> {
  ///  Local state fields for this component.

  DataTableNewModelStruct? editableHeaders;
  void updateEditableHeadersStruct(Function(DataTableNewModelStruct) updateFn) {
    updateFn(editableHeaders ??= DataTableNewModelStruct());
  }

  List<DataTableNewModelStruct> editedValues = [];
  void addToEditedValues(DataTableNewModelStruct item) =>
      editedValues.add(item);
  void removeFromEditedValues(DataTableNewModelStruct item) =>
      editedValues.remove(item);
  void removeAtIndexFromEditedValues(int index) => editedValues.removeAt(index);
  void insertAtIndexInEditedValues(int index, DataTableNewModelStruct item) =>
      editedValues.insert(index, item);
  void updateEditedValuesAtIndex(
          int index, Function(DataTableNewModelStruct) updateFn) =>
      editedValues[index] = updateFn(editedValues[index]);

  String? test;

  dynamic newtest;

  dynamic editedJson;

  List<String> editedValuesString = [];
  void addToEditedValuesString(String item) => editedValuesString.add(item);
  void removeFromEditedValuesString(String item) =>
      editedValuesString.remove(item);
  void removeAtIndexFromEditedValuesString(int index) =>
      editedValuesString.removeAt(index);
  void insertAtIndexInEditedValuesString(int index, String item) =>
      editedValuesString.insert(index, item);
  void updateEditedValuesStringAtIndex(int index, Function(String) updateFn) =>
      editedValuesString[index] = updateFn(editedValuesString[index]);

  List<String> textFieldss = [];
  void addToTextFieldss(String item) => textFieldss.add(item);
  void removeFromTextFieldss(String item) => textFieldss.remove(item);
  void removeAtIndexFromTextFieldss(int index) => textFieldss.removeAt(index);
  void insertAtIndexInTextFieldss(int index, String item) =>
      textFieldss.insert(index, item);
  void updateTextFieldssAtIndex(int index, Function(String) updateFn) =>
      textFieldss[index] = updateFn(textFieldss[index]);

  List<DataTableModelStruct> testttttttttt = [];
  void addToTestttttttttt(DataTableModelStruct item) => testttttttttt.add(item);
  void removeFromTestttttttttt(DataTableModelStruct item) =>
      testttttttttt.remove(item);
  void removeAtIndexFromTestttttttttt(int index) =>
      testttttttttt.removeAt(index);
  void insertAtIndexInTestttttttttt(int index, DataTableModelStruct item) =>
      testttttttttt.insert(index, item);
  void updateTesttttttttttAtIndex(
          int index, Function(DataTableModelStruct) updateFn) =>
      testttttttttt[index] = updateFn(testttttttttt[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (HostOpeartions)] action in Button widget.
  ApiCallResponse? addfieldsapires;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
