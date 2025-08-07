import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'u_p_i_host_server_widget.dart' show UPIHostServerWidget;
import 'package:flutter/material.dart';

class UPIHostServerModel extends FlutterFlowModel<UPIHostServerWidget> {
  ///  Local state fields for this page.

  List<MetaDataStruct> upiMeta = [];
  void addToUpiMeta(MetaDataStruct item) => upiMeta.add(item);
  void removeFromUpiMeta(MetaDataStruct item) => upiMeta.remove(item);
  void removeAtIndexFromUpiMeta(int index) => upiMeta.removeAt(index);
  void insertAtIndexInUpiMeta(int index, MetaDataStruct item) =>
      upiMeta.insert(index, item);
  void updateUpiMetaAtIndex(int index, Function(MetaDataStruct) updateFn) =>
      upiMeta[index] = updateFn(upiMeta[index]);

  List<UPIHostDataModelStruct> upiData = [];
  void addToUpiData(UPIHostDataModelStruct item) => upiData.add(item);
  void removeFromUpiData(UPIHostDataModelStruct item) => upiData.remove(item);
  void removeAtIndexFromUpiData(int index) => upiData.removeAt(index);
  void insertAtIndexInUpiData(int index, UPIHostDataModelStruct item) =>
      upiData.insert(index, item);
  void updateUpiDataAtIndex(
          int index, Function(UPIHostDataModelStruct) updateFn) =>
      upiData[index] = updateFn(upiData[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (mockUPI)] action in UPIHostServer widget.
  ApiCallResponse? apiResultlsyMOCK;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
