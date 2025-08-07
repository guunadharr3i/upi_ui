import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pending_request_view_com_widget.dart' show PendingRequestViewComWidget;
import 'package:flutter/material.dart';

class PendingRequestViewComModel
    extends FlutterFlowModel<PendingRequestViewComWidget> {
  ///  Local state fields for this component.

  DataTableNewModelStruct? dataOld;
  void updateDataOldStruct(Function(DataTableNewModelStruct) updateFn) {
    updateFn(dataOld ??= DataTableNewModelStruct());
  }

  DataTableNewModelStruct? dataNew;
  void updateDataNewStruct(Function(DataTableNewModelStruct) updateFn) {
    updateFn(dataNew ??= DataTableNewModelStruct());
  }

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (PendingRequestApprove)] action in Button widget.
  ApiCallResponse? apiResultem3;
  // Stores action output result for [Backend Call - API (PendingRequestApprove)] action in Button widget.
  ApiCallResponse? apiResultem3Copy;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
