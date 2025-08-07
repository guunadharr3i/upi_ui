import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'host_config_page_model.dart';
export 'host_config_page_model.dart';

class HostConfigPageWidget extends StatefulWidget {
  const HostConfigPageWidget({super.key});

  static String routeName = 'hostConfigPage';
  static String routePath = '/hostConfigPage';

  @override
  State<HostConfigPageWidget> createState() => _HostConfigPageWidgetState();
}

class _HostConfigPageWidgetState extends State<HostConfigPageWidget> {
  late HostConfigPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HostConfigPageModel());

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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'UPI APP',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Mulish',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: BoxDecoration(),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[]
                    .divide(SizedBox(height: 8.0))
                    .around(SizedBox(height: 8.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
