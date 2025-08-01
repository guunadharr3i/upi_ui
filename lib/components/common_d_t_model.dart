import 'package:upi_ui/backend/api_requests/_/api_manager.dart';

import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/add_host_fields_widget.dart';
import '/components/new_dynamic_edit_fields_widget.dart';
import '/components/search_comp_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'common_d_t_widget.dart' show CommonDTWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CommonDTModel extends FlutterFlowModel<CommonDTWidget> {
  ///  Local state fields for this component.

  bool isSuccess = false;

  List<DataStruct> dataTableList = [];
  void addToDataTableList(DataStruct item) => dataTableList.add(item);
  void removeFromDataTableList(DataStruct item) => dataTableList.remove(item);
  void removeAtIndexFromDataTableList(int index) =>
      dataTableList.removeAt(index);
  void insertAtIndexInDataTableList(int index, DataStruct item) =>
      dataTableList.insert(index, item);
  void updateDataTableListAtIndex(int index, Function(DataStruct) updateFn) =>
      dataTableList[index] = updateFn(dataTableList[index]);

  bool isLoading = false;

  bool viewClick = false;

  DataTableNewModelStruct? dataTableStructure;
  void updateDataTableStructureStruct(
      Function(DataTableNewModelStruct) updateFn) {
    updateFn(dataTableStructure ??= DataTableNewModelStruct());
  }

  ///  State fields for stateful widgets in this component.

  // Model for SearchComp component.
  late SearchCompModel searchCompModel;
  // Stores action output result for [Backend Call - API (TablesGetApiCall)] action in SearchComp widget.
  ApiCallResponse? apiResult2;
  // Stores action output result for [Backend Call - API (TablesGetApiCall)] action in SearchComp widget.
  ApiCallResponse? apiResult2e;
  // Stores action output result for [Backend Call - API (TablesGetApiCall)] action in SearchComp widget.
  ApiCallResponse? fieldsdetails;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<dynamic>();
  // Stores action output result for [Backend Call - API (DeleteOperationApi)] action in Container widget.
  ApiCallResponse? apiResultwfd;

  @override
  void initState(BuildContext context) {
    searchCompModel = createModel(context, () => SearchCompModel());
  }

  @override
  void dispose() {
    searchCompModel.dispose();
    paginatedDataTableController.dispose();
  }
}
