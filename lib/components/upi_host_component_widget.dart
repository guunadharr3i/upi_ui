import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'upi_host_component_model.dart';
export 'upi_host_component_model.dart';

class UpiHostComponentWidget extends StatefulWidget {
  const UpiHostComponentWidget({super.key});

  @override
  State<UpiHostComponentWidget> createState() => _UpiHostComponentWidgetState();
}

class _UpiHostComponentWidgetState extends State<UpiHostComponentWidget> {
  late UpiHostComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UpiHostComponentModel());

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

    return Builder(
      builder: (context) {
        final tableItem = FFAppState().dataTableList.toList();

        return FlutterFlowDataTable<DataTableModelStruct>(
          controller: _model.paginatedDataTableController,
          data: tableItem,
          columnsBuilder: (onSortChanged) => [
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'S/NO',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Mulish',
                        color: Colors.black,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'ID',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Mulish',
                        color: Colors.black,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
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
                        color: Colors.black,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
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
                        color: Colors.black,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'STATUS ',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Mulish',
                        color: Colors.black,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              fixedWidth: 270.0,
            ),
          ],
          dataRowBuilder:
              (tableItemItem, tableItemIndex, selected, onSelectChanged) =>
                  DataRow(
            cells: [
              Text(
                '1',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Mulish',
                      letterSpacing: 0.0,
                    ),
              ),
              Text(
                '442',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Mulish',
                      letterSpacing: 0.0,
                    ),
              ),
              Text(
                'FALCON-ASYNC-\nFINANCIAL',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Mulish',
                      letterSpacing: 0.0,
                    ),
              ),
              Text(
                '10.230.88.24:7701/upi',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Mulish',
                      letterSpacing: 0.0,
                    ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'APPROVE',
                    options: FFButtonOptions(
                      width: 100.0,
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFF089D08),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Mulish',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'REJECT',
                      options: FFButtonOptions(
                        width: 100.0,
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0xFFFF0000),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Mulish',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.remove_red_eye,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 30.0,
                  ),
                ],
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
          borderRadius: BorderRadius.circular(8.0),
          addHorizontalDivider: true,
          addTopAndBottomDivider: true,
          hideDefaultHorizontalDivider: true,
          horizontalDividerColor: Colors.black,
          horizontalDividerThickness: 1.0,
          addVerticalDivider: true,
          verticalDividerColor: Colors.black,
          verticalDividerThickness: 1.0,
        );
      },
    );
  }
}
