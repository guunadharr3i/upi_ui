import '/backend/schema/structs/index.dart';
import '/components/new_dynamic_edit_fields_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'api_test_model.dart';
export 'api_test_model.dart';

class ApiTestWidget extends StatefulWidget {
  const ApiTestWidget({super.key});

  static String routeName = 'apiTest';
  static String routePath = '/apiTest';

  @override
  State<ApiTestWidget> createState() => _ApiTestWidgetState();
}

class _ApiTestWidgetState extends State<ApiTestWidget> {
  late ApiTestModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ApiTestModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.model = functions.dynamicDataTableConvertCopy(FFAppState().djson);
      safeSetState(() {});
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
            'Page Title',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.mulish(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: wrapWithModel(
            model: _model.newDynamicEditFieldsModel,
            updateCallback: () => safeSetState(() {}),
            child: NewDynamicEditFieldsWidget(
              dataTableNewModel: _model.model,
              indexEdit: 0,
            ),
          ),
        ),
      ),
    );
  }
}
