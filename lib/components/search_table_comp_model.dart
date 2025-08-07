import '/flutter_flow/flutter_flow_util.dart';
import 'search_table_comp_widget.dart' show SearchTableCompWidget;
import 'package:flutter/material.dart';

class SearchTableCompModel extends FlutterFlowModel<SearchTableCompWidget> {
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
