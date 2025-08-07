import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'upi_resuable_data_table_widget.dart' show UpiResuableDataTableWidget;
import 'package:flutter/material.dart';

class UpiResuableDataTableModel
    extends FlutterFlowModel<UpiResuableDataTableWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<dynamic>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
  }
}
