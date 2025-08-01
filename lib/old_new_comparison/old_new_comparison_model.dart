import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'old_new_comparison_widget.dart' show OldNewComparisonWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OldNewComparisonModel extends FlutterFlowModel<OldNewComparisonWidget> {
  ///  Local state fields for this page.

  DataTableNewModelStruct? dataOLD;
  void updateDataOLDStruct(Function(DataTableNewModelStruct) updateFn) {
    updateFn(dataOLD ??= DataTableNewModelStruct());
  }

  DataTableNewModelStruct? dataNew;
  void updateDataNewStruct(Function(DataTableNewModelStruct) updateFn) {
    updateFn(dataNew ??= DataTableNewModelStruct());
  }

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
