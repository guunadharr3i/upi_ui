import 'package:upi_ui/backend/api_requests/_/api_manager.dart';

import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/add_delete_records_list_widget.dart';
import '/components/pending_request_view_com_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'pending_request_widget.dart' show PendingRequestWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

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

  List<String> dropdownValue = ['UPI Host', 'SYS'];
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

  int? totalPages;

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
  // Stores action output result for [Backend Call - API (TablesGetApiCall)] action in Icon widget.
  ApiCallResponse? hostresult;
  // Stores action output result for [Backend Call - API (TablesGetApiCall)] action in PaginationWithDots widget.
  ApiCallResponse? pendingRequestApiiiii;
  // Model for PendingRequestViewCom component.
  late PendingRequestViewComModel pendingRequestViewComModel;
  // Model for AddDeleteRecordsList component.
  late AddDeleteRecordsListModel addDeleteRecordsListModel;

  @override
  void initState(BuildContext context) {
    pendingRequestViewComModel =
        createModel(context, () => PendingRequestViewComModel());
    addDeleteRecordsListModel =
        createModel(context, () => AddDeleteRecordsListModel());
  }

  @override
  void dispose() {
    paginatedDataTableController.dispose();
    pendingRequestViewComModel.dispose();
    addDeleteRecordsListModel.dispose();
  }
}
