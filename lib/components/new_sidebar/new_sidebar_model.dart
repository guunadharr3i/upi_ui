import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'new_sidebar_widget.dart' show NewSidebarWidget;
import 'package:flutter/material.dart';

class NewSidebarModel extends FlutterFlowModel<NewSidebarWidget> {
  ///  Local state fields for this component.

  bool? pendingRequests = false;

  bool? upiHost = false;

  bool? upiSms = false;

  bool? sys = false;

  bool? upiComplaint = false;

  bool? upiCountry = false;

  bool? upiSource = false;

  bool upiFrm = false;

  bool? upiTransaction = false;

  bool? closeSidebar = false;

  bool hideExpansion = false;

  bool? upiBank = false;

  bool? upiInteroperable = false;

  bool? upiSourceSub = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Logout)] action in Row widget.
  ApiCallResponse? apiResult3re;
  // Stores action output result for [Backend Call - API (Logout)] action in Logout widget.
  ApiCallResponse? apiResulttjt;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
