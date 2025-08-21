import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'data_table_comp_copy_model.dart';
export 'data_table_comp_copy_model.dart';

class DataTableCompCopyWidget extends StatefulWidget {
  const DataTableCompCopyWidget({
    super.key,
    this.json,
  });

  final dynamic json;

  @override
  State<DataTableCompCopyWidget> createState() =>
      _DataTableCompCopyWidgetState();
}

class _DataTableCompCopyWidgetState extends State<DataTableCompCopyWidget> {
  late DataTableCompCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DataTableCompCopyModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      safeSetState(() {});
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return AlertDialog(
            title: Text(getJsonField(
              FFAppState().upiHostResponse,
              r'''$.data[:].HOST''',
            ).toString()),
            content: Text(getJsonField(
              FFAppState().upiHostResponse,
              r'''$.data[:].ID''',
            ).toString()),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(alertDialogContext),
                child: Text('Ok'),
              ),
            ],
          );
        },
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Builder(
            builder: (context) {
              final test = FFAppState().upiHostResponse.toList();

              return FlutterFlowDataTable<dynamic>(
                controller: _model.paginatedDataTableController,
                data: test,
                columnsBuilder: (onSortChanged) => [
                  DataColumn2(
                    label: DefaultTextStyle.merge(
                      softWrap: true,
                      child: Text(
                        'SN',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Mulish',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  DataColumn2(
                    label: DefaultTextStyle.merge(
                      softWrap: true,
                      child: Text(
                        'HOST',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Mulish',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  DataColumn2(
                    label: DefaultTextStyle.merge(
                      softWrap: true,
                      child: Text(
                        'URL',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Mulish',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  DataColumn2(
                    label: DefaultTextStyle.merge(
                      softWrap: true,
                      child: Text(
                        'Modify',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Mulish',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                ],
                dataRowBuilder:
                    (testItem, testIndex, selected, onSelectChanged) => DataRow(
                  color: WidgetStateProperty.all(
                    testIndex % 2 == 0
                        ? FlutterFlowTheme.of(context).secondaryBackground
                        : FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  cells: [
                    Text(
                      getJsonField(
                        testItem,
                        r'''$.data[:].ID''',
                      ).toString(),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Mulish',
                            color: FlutterFlowTheme.of(context).secondary,
                            letterSpacing: 0.0,
                          ),
                    ),
                    Text(
                      getJsonField(
                        testItem,
                        r'''$.data[:].HOST''',
                      ).toString(),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Mulish',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Text(
                      getJsonField(
                        testItem,
                        r'''$.data[:].URL''',
                      ).toString(),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Mulish',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {},
                        child: Icon(
                          Icons.edit_square,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 24.0,
                        ),
                      ),
                    ),
                  ].map((c) => DataCell(c)).toList(),
                ),
                paginated: true,
                selectable: false,
                hidePaginator: false,
                showFirstLastButtons: false,
                headingRowHeight: 56.0,
                dataRowHeight: 48.0,
                columnSpacing: 20.0,
                headingRowColor: FlutterFlowTheme.of(context).primary,
                borderRadius: BorderRadius.circular(8.0),
                addHorizontalDivider: true,
                addTopAndBottomDivider: false,
                hideDefaultHorizontalDivider: true,
                horizontalDividerColor:
                    FlutterFlowTheme.of(context).secondaryBackground,
                horizontalDividerThickness: 1.0,
                addVerticalDivider: false,
              );
            },
          ),
        ),
      ],
    );
  }
}
