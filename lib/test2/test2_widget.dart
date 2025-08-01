import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/dynamic_edit_fields_widget_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'test2_model.dart';
export 'test2_model.dart';

class Test2Widget extends StatefulWidget {
  const Test2Widget({super.key});

  static String routeName = 'test2';
  static String routePath = '/test2';

  @override
  State<Test2Widget> createState() => _Test2WidgetState();
}

class _Test2WidgetState extends State<Test2Widget> {
  late Test2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Test2Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultcqt = await MockUPICall.call();

      _model.fields = (getJsonField(
        (_model.apiResultcqt?.jsonBody ?? ''),
        r'''$.metaData''',
        true,
      )!
              .toList()
              .map<MetaDataStruct?>(MetaDataStruct.maybeFromMap)
              .toList() as Iterable<MetaDataStruct?>)
          .withoutNulls
          .toList()
          .cast<MetaDataStruct>();
      _model.dataTableNewModal = functions
          .dynamicDataTableConvert((_model.apiResultcqt?.jsonBody ?? ''));
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
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: wrapWithModel(
              model: _model.dynamicEditFieldsWidgetCardModel,
              updateCallback: () => safeSetState(() {}),
              child: DynamicEditFieldsWidgetCardWidget(
                dataTableNewModal: _model.dataTableNewModal,
                closeIconCallBack: () async {},
                searchIconCallBack: () async {},
              ),
            ),
          ),
        ),
      ),
    );
  }
}
