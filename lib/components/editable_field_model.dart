import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'editable_field_widget.dart' show EditableFieldWidget;
import 'package:flutter/material.dart';

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
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();
  }
}
