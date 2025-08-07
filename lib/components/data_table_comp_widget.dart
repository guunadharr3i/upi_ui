import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'data_table_comp_model.dart';
export 'data_table_comp_model.dart';

class DataTableCompWidget extends StatefulWidget {
  const DataTableCompWidget({
    super.key,
    this.listdatatable,
    this.datatableModel,
  });

  final List<DataStruct>? listdatatable;
  final DataTableNewModelStruct? datatableModel;

  @override
  State<DataTableCompWidget> createState() => _DataTableCompWidgetState();
}

class _DataTableCompWidgetState extends State<DataTableCompWidget> {
  late DataTableCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DataTableCompModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.datatable = widget.datatableModel;
      safeSetState(() {});
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
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Builder(
            builder: (context) {
              final test = widget.listdatatable?.toList() ?? [];

              return FlutterFlowDataTable<DataStruct>(
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
                      testItem.id.toString(),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Mulish',
                            color: FlutterFlowTheme.of(context).secondary,
                            letterSpacing: 0.0,
                          ),
                    ),
                    Text(
                      testItem.host,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Mulish',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Text(
                      testItem.url,
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
