import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'u_p_i_h_o_s_t_page_widget.dart' show UPIHOSTPageWidget;
import 'package:flutter/material.dart';

class UPIHOSTPageModel extends FlutterFlowModel<UPIHOSTPageWidget> {
  ///  Local state fields for this page.

  DataTableNewModelStruct? dataTableStacture;
  void updateDataTableStactureStruct(
      Function(DataTableNewModelStruct) updateFn) {
    updateFn(dataTableStacture ??= DataTableNewModelStruct());
  }

  bool isSuccess = false;

  bool isLoading = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (TablesGetApiCall)] action in UPIHOSTPage widget.
  ApiCallResponse? apiresult1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (TablesGetApiCall)] action in Button widget.
  ApiCallResponse? apiResult;
  // Stores action output result for [Backend Call - API (updateUPIHostTable)] action in DataTableWidgetNew widget.
  ApiCallResponse? apiResultev7;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
