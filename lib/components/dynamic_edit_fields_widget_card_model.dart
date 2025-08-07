import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dynamic_edit_fields_widget_card_widget.dart'
    show DynamicEditFieldsWidgetCardWidget;
import 'package:flutter/material.dart';

class DynamicEditFieldsWidgetCardModel
    extends FlutterFlowModel<DynamicEditFieldsWidgetCardWidget> {
  ///  Local state fields for this component.

  DataTableNewModelStruct? editedData;
  void updateEditedDataStruct(Function(DataTableNewModelStruct) updateFn) {
    updateFn(editedData ??= DataTableNewModelStruct());
  }

  bool isSuccess = false;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
