import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'pending_requests_model.dart';
export 'pending_requests_model.dart';

class PendingRequestsWidget extends StatefulWidget {
  const PendingRequestsWidget({super.key});

  static String routeName = 'PendingRequests';
  static String routePath = '/pendingRequests';

  @override
  State<PendingRequestsWidget> createState() => _PendingRequestsWidgetState();
}

class _PendingRequestsWidgetState extends State<PendingRequestsWidget> {
  late PendingRequestsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PendingRequestsModel());

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
      ),
    );
  }
}
