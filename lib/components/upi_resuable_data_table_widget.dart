import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'upi_resuable_data_table_model.dart';
export 'upi_resuable_data_table_model.dart';

class UpiResuableDataTableWidget extends StatefulWidget {
  const UpiResuableDataTableWidget({
    super.key,
    int? tableColumn,
    Color? tableHeaderColor,
    Color? tableRowColor,
    Color? tableAlternetRawColor,
    int? tableRowValue,
    required this.tableColumnValue,
    required this.tableRawData,
  })  : this.tableColumn = tableColumn ?? 5,
        this.tableHeaderColor = tableHeaderColor ?? const Color(0xFFF8D3B2),
        this.tableRowColor = tableRowColor ?? const Color(0xFFD1D1D1),
        this.tableAlternetRawColor =
            tableAlternetRawColor ?? const Color(0xFFFFFFCC),
        this.tableRowValue = tableRowValue ?? 5;

  final int tableColumn;
  final Color tableHeaderColor;
  final Color tableRowColor;
  final Color tableAlternetRawColor;
  final int tableRowValue;
  final List<String>? tableColumnValue;
  final List<dynamic>? tableRawData;

  @override
  State<UpiResuableDataTableWidget> createState() =>
      _UpiResuableDataTableWidgetState();
}

class _UpiResuableDataTableWidgetState
    extends State<UpiResuableDataTableWidget> {
  late UpiResuableDataTableModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UpiResuableDataTableModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Builder(
        builder: (context) {
          final upiDataTable = widget!.tableRawData!.map((e) => e).toList();

          return FlutterFlowDataTable<dynamic>(
            controller: _model.paginatedDataTableController,
            data: upiDataTable,
            columnsBuilder: (onSortChanged) => List.generate(
              valueOrDefault<int>(
                widget!.tableColumnValue?.length,
                5,
              ),
              (columnIndex) => DataColumn2(
                label: DefaultTextStyle.merge(
                  softWrap: true,
                  child: Text(
                    widget!.tableColumnValue!.length.toString(),
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          font: GoogleFonts.mulish(
                            fontWeight: FlutterFlowTheme.of(context)
                                .labelLarge
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelLarge
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .labelLarge
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).labelLarge.fontStyle,
                        ),
                  ),
                ),
              ),
            ),
            dataRowBuilder: (upiDataTableItem, upiDataTableIndex, selected,
                    onSelectChanged) =>
                DataRow(
              color: MaterialStateProperty.all(
                upiDataTableIndex % 2 == 0
                    ? FlutterFlowTheme.of(context).tableRowColor
                    : FlutterFlowTheme.of(context).secondaryBackground,
              ),
              cells: List.generate(
                valueOrDefault<int>(
                  widget!.tableColumnValue?.length,
                  5,
                ),
                (columnIndex) => DataCell(
                  Text(
                    'Edit Column 1',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.mulish(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ),
              ),
            ),
            paginated: true,
            selectable: false,
            hidePaginator: false,
            showFirstLastButtons: false,
            headingRowHeight: 64.0,
            dataRowHeight: 64.0,
            columnSpacing: 20.0,
            headingRowColor: FlutterFlowTheme.of(context).tableHeaderColor,
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
    );
  }
}
