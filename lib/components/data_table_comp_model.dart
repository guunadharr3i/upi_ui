import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'data_table_comp_widget.dart' show DataTableCompWidget;
import 'package:flutter/material.dart';

class DataTableCompModel extends FlutterFlowModel<DataTableCompWidget> {
  ///  Local state fields for this component.

  DataTableNewModelStruct? datatable;
  void updateDatatableStruct(Function(DataTableNewModelStruct) updateFn) {
    updateFn(datatable ??= DataTableNewModelStruct());
  }

  ///  State fields for stateful widgets in this component.

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<DataStruct>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
  }
}
