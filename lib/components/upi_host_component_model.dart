import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'upi_host_component_widget.dart' show UpiHostComponentWidget;
import 'package:flutter/material.dart';

class UpiHostComponentModel extends FlutterFlowModel<UpiHostComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<DataTableModelStruct>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
  }
}
