import '/backend/schema/structs/index.dart';
import '/components/editable_field_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'dynamic_edit_fields_widget_card_widget.dart'
    show DynamicEditFieldsWidgetCardWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
