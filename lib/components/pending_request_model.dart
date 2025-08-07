import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/add_delete_records_list_widget.dart';
import '/components/pending_request_view_com_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pending_request_widget.dart' show PendingRequestWidget;
import 'package:flutter/material.dart';

class PendingRequestModel extends FlutterFlowModel<PendingRequestWidget> {
  ///  Local state fields for this component.

  List<DataStruct> pendingRequestDataTable = [];
  void addToPendingRequestDataTable(DataStruct item) =>
      pendingRequestDataTable.add(item);
  void removeFromPendingRequestDataTable(DataStruct item) =>
      pendingRequestDataTable.remove(item);
  void removeAtIndexFromPendingRequestDataTable(int index) =>
      pendingRequestDataTable.removeAt(index);
  void insertAtIndexInPendingRequestDataTable(int index, DataStruct item) =>
      pendingRequestDataTable.insert(index, item);
  void updatePendingRequestDataTableAtIndex(
          int index, Function(DataStruct) updateFn) =>
      pendingRequestDataTable[index] = updateFn(pendingRequestDataTable[index]);

  bool isSuccess = false;

  bool isLoading = false;

  DataTableNewModelStruct? dataTableStructure;
  void updateDataTableStructureStruct(
      Function(DataTableNewModelStruct) updateFn) {
    updateFn(dataTableStructure ??= DataTableNewModelStruct());
  }

  List<String> dropdownValue = [
    'UPI Host',
    'SYS',
    'UPI Complaint',
    'UPI Country',
    'UPI SMS',
    'UPI Source Sub',
    'UPI FRM',
    'UPI Transaction',
    'UPI Bank',
    'UPI Source',
    'UPI Interoperable'
  ];
  void addToDropdownValue(String item) => dropdownValue.add(item);
  void removeFromDropdownValue(String item) => dropdownValue.remove(item);
  void removeAtIndexFromDropdownValue(int index) =>
      dropdownValue.removeAt(index);
  void insertAtIndexInDropdownValue(int index, String item) =>
      dropdownValue.insert(index, item);
  void updateDropdownValueAtIndex(int index, Function(String) updateFn) =>
      dropdownValue[index] = updateFn(dropdownValue[index]);

  String? searchID;

  bool? addDeleteBool = false;

  String? operation;

  dynamic jsonPendingReqRes;

  String? tableId;

  String? recordId;

  int? totalPages = 0;

  String dropdownSelectedValue = 'UPIHOST';

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (TablesGetApiCall)] action in PendingRequest widget.
  ApiCallResponse? pendingRequestApi;
  // Stores action output result for [Backend Call - API (TablesGetApiCall)] action in StyledDropdown widget.
  ApiCallResponse? dropDownChanged;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<dynamic>();
  // Stores action output result for [Backend Call - API (PendingRequestApprove)] action in Container widget.
  ApiCallResponse? apiResultem33;
  // Stores action output result for [Backend Call - API (PendingRequestApprove)] action in Container widget.
  ApiCallResponse? apiResultem33Copy;
  // Stores action output result for [Backend Call - API (PendingRequestApprove)] action in Button widget.
  ApiCallResponse? apiResultbq6;
  // Stores action output result for [Backend Call - API (PendingRequestApprove)] action in Button widget.
  ApiCallResponse? apiResultem33CopyCopyr;
  // Stores action output result for [Backend Call - API (TablesGetApiCall)] action in Icon widget.
  ApiCallResponse? upiresult;
  // Stores action output result for [Backend Call - API (TablesGetApiCall)] action in Icon widget.
  ApiCallResponse? upiresultt;
  // Stores action output result for [Backend Call - API (TablesGetApiCall)] action in PaginationWithDots widget.
  ApiCallResponse? pendingRequestApiiiii;
  // Model for AddDeleteRecordsList component.
  late AddDeleteRecordsListModel addDeleteRecordsListModel;
  // Model for PendingRequestViewCom component.
  late PendingRequestViewComModel pendingRequestViewComModel;

  @override
  void initState(BuildContext context) {
    addDeleteRecordsListModel =
        createModel(context, () => AddDeleteRecordsListModel());
    pendingRequestViewComModel =
        createModel(context, () => PendingRequestViewComModel());
  }

  @override
  void dispose() {
    paginatedDataTableController.dispose();
    addDeleteRecordsListModel.dispose();
    pendingRequestViewComModel.dispose();
  }
}
