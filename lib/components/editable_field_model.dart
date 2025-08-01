import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'editable_field_widget.dart' show EditableFieldWidget;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditableFieldModel extends FlutterFlowModel<EditableFieldWidget> {
  ///  Local state fields for this component.

  String? edited;

  List<DataTableNewModelStruct> textFieldsItems = [];
  void addToTextFieldsItems(DataTableNewModelStruct item) =>
      textFieldsItems.add(item);
  void removeFromTextFieldsItems(DataTableNewModelStruct item) =>
      textFieldsItems.remove(item);
  void removeAtIndexFromTextFieldsItems(int index) =>
      textFieldsItems.removeAt(index);
  void insertAtIndexInTextFieldsItems(
          int index, DataTableNewModelStruct item) =>
      textFieldsItems.insert(index, item);
  void updateTextFieldsItemsAtIndex(
          int index, Function(DataTableNewModelStruct) updateFn) =>
      textFieldsItems[index] = updateFn(textFieldsItems[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
