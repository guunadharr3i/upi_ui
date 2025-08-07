import '/components/pending_request_view_com_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'pending_request_view_model.dart';
export 'pending_request_view_model.dart';

class PendingRequestViewWidget extends StatefulWidget {
  const PendingRequestViewWidget({super.key});

  static String routeName = 'PendingRequestView';
  static String routePath = '/pendingRequestView';

  @override
  State<PendingRequestViewWidget> createState() =>
      _PendingRequestViewWidgetState();
}

class _PendingRequestViewWidgetState extends State<PendingRequestViewWidget> {
  late PendingRequestViewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PendingRequestViewModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: wrapWithModel(
            model: _model.pendingRequestViewComModel,
            updateCallback: () => safeSetState(() {}),
            child: PendingRequestViewComWidget(
              tableId: '123456',
              recordId: '765432123',
              action: () async {},
            ),
          ),
        ),
      ),
    );
  }
}
