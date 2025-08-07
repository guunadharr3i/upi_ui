import '/components/pending_request_view_com_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pending_request_view_widget.dart' show PendingRequestViewWidget;
import 'package:flutter/material.dart';

class PendingRequestViewModel
    extends FlutterFlowModel<PendingRequestViewWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for PendingRequestViewCom component.
  late PendingRequestViewComModel pendingRequestViewComModel;

  @override
  void initState(BuildContext context) {
    pendingRequestViewComModel =
        createModel(context, () => PendingRequestViewComModel());
  }

  @override
  void dispose() {
    pendingRequestViewComModel.dispose();
  }
}
