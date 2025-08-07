import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'mapping_t_e_s_t_widget.dart' show MappingTESTWidget;
import 'package:flutter/material.dart';

class MappingTESTModel extends FlutterFlowModel<MappingTESTWidget> {
  ///  Local state fields for this page.

  MappingStruct? roleMapping;
  void updateRoleMappingStruct(Function(MappingStruct) updateFn) {
    updateFn(roleMapping ??= MappingStruct());
  }

  List<AccessByTableStruct> tableMapping = [];
  void addToTableMapping(AccessByTableStruct item) => tableMapping.add(item);
  void removeFromTableMapping(AccessByTableStruct item) =>
      tableMapping.remove(item);
  void removeAtIndexFromTableMapping(int index) => tableMapping.removeAt(index);
  void insertAtIndexInTableMapping(int index, AccessByTableStruct item) =>
      tableMapping.insert(index, item);
  void updateTableMappingAtIndex(
          int index, Function(AccessByTableStruct) updateFn) =>
      tableMapping[index] = updateFn(tableMapping[index]);

  List<String> tableVisible = [];
  void addToTableVisible(String item) => tableVisible.add(item);
  void removeFromTableVisible(String item) => tableVisible.remove(item);
  void removeAtIndexFromTableVisible(int index) => tableVisible.removeAt(index);
  void insertAtIndexInTableVisible(int index, String item) =>
      tableVisible.insert(index, item);
  void updateTableVisibleAtIndex(int index, Function(String) updateFn) =>
      tableVisible[index] = updateFn(tableVisible[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (IDmapping)] action in mappingTEST widget.
  ApiCallResponse? apiResultx7i;
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
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;

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

    textFieldFocusNode5?.dispose();
    textController5?.dispose();

    textFieldFocusNode6?.dispose();
    textController6?.dispose();
  }
}
