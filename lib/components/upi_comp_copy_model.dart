import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/search_comp_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'upi_comp_copy_widget.dart' show UpiCompCopyWidget;
import 'package:flutter/material.dart';

class UpiCompCopyModel extends FlutterFlowModel<UpiCompCopyWidget> {
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
