import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'old_new_comparison_widget.dart' show OldNewComparisonWidget;
import 'package:flutter/material.dart';

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
