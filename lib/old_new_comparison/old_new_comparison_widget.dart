import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'old_new_comparison_model.dart';
export 'old_new_comparison_model.dart';

class OldNewComparisonWidget extends StatefulWidget {
  const OldNewComparisonWidget({super.key});

  static String routeName = 'oldNewComparison';
  static String routePath = '/oldNewComparison';

  @override
  State<OldNewComparisonWidget> createState() => _OldNewComparisonWidgetState();
}

class _OldNewComparisonWidgetState extends State<OldNewComparisonWidget> {
  late OldNewComparisonModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OldNewComparisonModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.dataOLD =
          functions.dynamicDataTableConvertCopy(FFAppState().djson);
      _model.dataNew =
          functions.dynamicDataTableConvertCopy(FFAppState().editJson);
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Fields',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Mulish',
                              letterSpacing: 0.0,
                            ),
                      ),
                      Builder(
                        builder: (context) {
                          final headers = getJsonField(
                            FFAppState().upiHostResponse,
                            r'''$.metaData''',
                          ).toList();

                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                                List.generate(headers.length, (headersIndex) {
                              final headersItem = headers[headersIndex];
                              return Text(
                                getJsonField(
                                  headersItem,
                                  r'''$.name''',
                                ).toString(),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Mulish',
                                      letterSpacing: 0.0,
                                    ),
                              );
                            }),
                          );
                        },
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Old',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Mulish',
                              letterSpacing: 0.0,
                            ),
                      ),
                      Builder(
                        builder: (context) {
                          final oldData = _model
                                  .dataOLD?.value.firstOrNull?.modelList
                                  .toList() ??
                              [];

                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                                List.generate(oldData.length, (oldDataIndex) {
                              final oldDataItem = oldData[oldDataIndex];
                              return Text(
                                oldDataItem,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Mulish',
                                      color: oldDataItem ==
                                              (_model.dataNew?.value
                                                  .firstOrNull?.modelList
                                                  .elementAtOrNull(
                                                      oldDataIndex))
                                          ? FlutterFlowTheme.of(context)
                                              .primaryText
                                          : FlutterFlowTheme.of(context).error,
                                      letterSpacing: 0.0,
                                    ),
                              );
                            }),
                          );
                        },
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'New',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Mulish',
                              letterSpacing: 0.0,
                            ),
                      ),
                      Builder(
                        builder: (context) {
                          final newValues = _model
                                  .dataNew?.value.firstOrNull?.modelList
                                  .toList() ??
                              [];

                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(newValues.length,
                                (newValuesIndex) {
                              final newValuesItem = newValues[newValuesIndex];
                              return Text(
                                newValuesItem,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Mulish',
                                      color: newValuesItem ==
                                              (_model.dataOLD?.value
                                                  .firstOrNull?.modelList
                                                  .elementAtOrNull(
                                                      newValuesIndex))
                                          ? FlutterFlowTheme.of(context)
                                              .primaryText
                                          : FlutterFlowTheme.of(context)
                                              .success,
                                      letterSpacing: 0.0,
                                    ),
                              );
                            }),
                          );
                        },
                      ),
                    ],
                  ),
                ].divide(SizedBox(width: 10.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
