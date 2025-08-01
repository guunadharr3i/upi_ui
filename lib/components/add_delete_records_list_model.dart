import 'package:upi_ui/backend/api_requests/_/api_manager.dart';

import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'add_delete_records_list_widget.dart' show AddDeleteRecordsListWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddDeleteRecordsListModel
    extends FlutterFlowModel<AddDeleteRecordsListWidget> {
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
