import '/flutter_flow/flutter_flow_util.dart';
import 'search_comp_widget.dart' show SearchCompWidget;
import 'package:flutter/material.dart';

class SearchCompModel extends FlutterFlowModel<SearchCompWidget> {
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
