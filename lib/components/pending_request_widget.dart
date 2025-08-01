import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/add_delete_records_list_widget.dart';
import '/components/pending_request_view_com_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'pending_request_model.dart';
export 'pending_request_model.dart';

class PendingRequestWidget extends StatefulWidget {
  const PendingRequestWidget({
    super.key,
    required this.parameter1,
    this.ddSelected,
  });

  final String? parameter1;
  final String? ddSelected;

  @override
  State<PendingRequestWidget> createState() => _PendingRequestWidgetState();
}

class _PendingRequestWidgetState extends State<PendingRequestWidget> {
  late PendingRequestModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PendingRequestModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.isLoading = true;
      _model.dropdownSelectedValue = FFAppState().dropdownSelectedValue;
      _model.pendingRequestApi = await TablesGetApiCallCall.call(
        tableCode: 'UPITEMP',
        limit: 5,
        tempTableName:
            FFAppState().dropdownSelectedValue == 'SYS' ? 'SYS' : 'UPIHOST',
        direction: 'DESC',
        offset: 0,
        sortColumn: 'ID',
      );

      if ((_model.pendingRequestApi?.succeeded ?? true)) {
        _model.totalPages = getJsonField(
          (_model.pendingRequestApi?.jsonBody ?? ''),
          r'''$.pageCount''',
        );
        _model.jsonPendingReqRes = getJsonField(
          (_model.pendingRequestApi?.jsonBody ?? ''),
          r'''$.data''',
        );
      } else {
        _model.updatePage(() {});
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text('Alert'),
              content: Text('something went wrong'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
      }

      _model.isLoading = false;
      _model.updatePage(() {});
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      decoration: BoxDecoration(
        color: Color(0x00FFFFFF),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 28.0, 0.0, 18.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      safeSetState(() {});
                    },
                    child: Text(
                      'Pending Request',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.mulish(
                              fontWeight: FontWeight.w500,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).headingColor,
                            fontSize: 32.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ),
                ),
              ],
            ),
            if ((FFAppState().addDeleteBool == false) &&
                (FFAppState().pendingRequestViewOption == false))
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(18.0, 12.0, 18.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 198.0,
                            height: 46.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).bgColor3,
                              borderRadius: BorderRadius.circular(29.0),
                            ),
                            child: Container(
                              width: 196.0,
                              height: 45.0,
                              child: custom_widgets.StyledDropdown(
                                width: 196.0,
                                height: 45.0,
                                fontSize: 14.0,
                                borderRadius: 24.0,
                                menuBackgroundColor:
                                    FlutterFlowTheme.of(context).bgColor4,
                                dropdownListBackgroundColor:
                                    FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                listTextColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                menuTextColor:
                                    FlutterFlowTheme.of(context).headingColor,
                                dropdownOffsetY: 12.0,
                                initialValue:
                                    FFAppState().dropdownSelectedValue,
                                items: _model.dropdownValue,
                                onItemSelected: (onSelect) async {
                                  FFAppState().dropdownSelectedValue = onSelect;
                                  _model.dropdownSelectedValue = onSelect;
                                  _model.dropDownChanged =
                                      await TablesGetApiCallCall.call(
                                    tableCode: 'UPITEMP',
                                    limit: 5,
                                    tempTableName:
                                        onSelect == 'SYS' ? 'SYS' : 'UPIHOST',
                                    direction: 'DESC',
                                    offset: 0,
                                    sortColumn: 'ID',
                                    userId: 'BAN471425',
                                  );

                                  if ((_model.dropDownChanged?.succeeded ??
                                      true)) {
                                    _model.jsonPendingReqRes = getJsonField(
                                      (_model.dropDownChanged?.jsonBody ?? ''),
                                      r'''$.data''',
                                    );
                                    _model.totalPages = getJsonField(
                                      (_model.dropDownChanged?.jsonBody ?? ''),
                                      r'''$.pageCount''',
                                    );
                                    _model.updatePage(() {});
                                  } else {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('Alert'),
                                          content: Text('something went wrong'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }

                                  safeSetState(() {});
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 22.0, 0.0, 0.0),
                        child: Builder(
                          builder: (context) {
                            if (_model.isLoading == false) {
                              return Container(
                                height: 490.0,
                                decoration: BoxDecoration(),
                                child: Builder(
                                  builder: (context) {
                                    if (_model.jsonPendingReqRes != null) {
                                      return Builder(
                                        builder: (context) {
                                          final pdRequestTable = _model
                                                  .jsonPendingReqRes
                                                  ?.toList() ??
                                              [];

                                          return FlutterFlowDataTable<dynamic>(
                                            controller: _model
                                                .paginatedDataTableController,
                                            data: pdRequestTable,
                                            columnsBuilder: (onSortChanged) => [
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Text(
                                                    'S.No',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          font: GoogleFonts
                                                              .mulish(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ),
                                                fixedWidth:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.05,
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Text(
                                                    'ID',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          font: GoogleFonts
                                                              .mulish(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ),
                                                fixedWidth:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.1,
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Text(
                                                    _model.dropdownSelectedValue ==
                                                            'SYS'
                                                        ? 'VALUE'
                                                        : 'HOST',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          font: GoogleFonts
                                                              .mulish(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Text(
                                                    _model.dropdownSelectedValue ==
                                                            'SYS'
                                                        ? 'DATA_TYPE'
                                                        : 'URL',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          font: GoogleFonts
                                                              .mulish(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Text(
                                                    'Operations',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          font: GoogleFonts
                                                              .mulish(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ),
                                                fixedWidth:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.1,
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Text(
                                                    'Actions',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          font: GoogleFonts
                                                              .mulish(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                            dataRowBuilder: (pdRequestTableItem,
                                                    pdRequestTableIndex,
                                                    selected,
                                                    onSelectChanged) =>
                                                DataRow(
                                              color: MaterialStateProperty.all(
                                                pdRequestTableIndex % 2 == 0
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .tableRowColor
                                                    : Colors.white,
                                              ),
                                              cells: [
                                                Text(
                                                  (pdRequestTableIndex + 1)
                                                      .toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.mulish(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                                Text(
                                                  functions.extractIdHostUrl(
                                                      getJsonField(
                                                        pdRequestTableItem,
                                                        r'''$.RAW_JSON''',
                                                      ).toString(),
                                                      'ID'),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.mulish(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                                Text(
                                                  functions.extractIdHostUrl(
                                                      getJsonField(
                                                        pdRequestTableItem,
                                                        r'''$.RAW_JSON''',
                                                      ).toString(),
                                                      _model.dropdownSelectedValue ==
                                                              'SYS'
                                                          ? 'VALUE'
                                                          : 'HOST'),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.mulish(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                                Text(
                                                  functions.extractIdHostUrl(
                                                      getJsonField(
                                                        pdRequestTableItem,
                                                        r'''$.RAW_JSON''',
                                                      ).toString(),
                                                      _model.dropdownSelectedValue ==
                                                              'SYS'
                                                          ? 'DATA_TYPE'
                                                          : 'URL'),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.mulish(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      getJsonField(
                                                        pdRequestTableItem,
                                                        r'''$.ACTION_TYPE''',
                                                      ).toString(),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .mulish(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 12.0)),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        _model.apiResultem33 =
                                                            await PendingRequestApproveCall
                                                                .call(
                                                          action: 'APPROVE',
                                                          tableId: getJsonField(
                                                            pdRequestTableItem,
                                                            r'''$.TABLE_ID''',
                                                          ).toString(),
                                                          recordId:
                                                              getJsonField(
                                                            pdRequestTableItem,
                                                            r'''$.RECORD_ID''',
                                                          ).toString(),
                                                          userId: FFAppState()
                                                              .userid,
                                                        );

                                                        if ((_model
                                                                .apiResultem33
                                                                ?.succeeded ??
                                                            true)) {
                                                          await showDialog(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                title: Text(
                                                                    'Alert'),
                                                                content: Text(
                                                                    'Successfully Approved'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext),
                                                                    child: Text(
                                                                        'Ok'),
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          );
                                                          FFAppState()
                                                                  .pendingRequestViewOption =
                                                              false;
                                                          FFAppState()
                                                              .update(() {});
                                                        }

                                                        context.pushNamed(
                                                            DashboardScreenWidget
                                                                .routeName);

                                                        safeSetState(() {});
                                                      },
                                                      child: Container(
                                                        width: 80.0,
                                                        height: 30.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .bgColor1,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20.0),
                                                        ),
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Text(
                                                            'Approve',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .mulish(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tableText1,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        _model.apiResultem33Copy =
                                                            await PendingRequestApproveCall
                                                                .call(
                                                          action: 'REJECT',
                                                          tableId: getJsonField(
                                                            pdRequestTableItem,
                                                            r'''$.TABLE_ID''',
                                                          ).toString(),
                                                          recordId:
                                                              getJsonField(
                                                            pdRequestTableItem,
                                                            r'''$.RECORD_ID''',
                                                          ).toString(),
                                                          userId: FFAppState()
                                                              .userid,
                                                          token: FFAppState()
                                                              .token,
                                                          deviceHash:
                                                              'deviceHash',
                                                        );

                                                        if ((_model
                                                                .apiResultem33Copy
                                                                ?.succeeded ??
                                                            true)) {
                                                          await showDialog(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                title: Text(
                                                                    'Alert'),
                                                                content: Text(
                                                                    'Successfully Rejected'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext),
                                                                    child: Text(
                                                                        'Ok'),
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          );
                                                          FFAppState()
                                                                  .pendingRequestViewOption =
                                                              false;
                                                          safeSetState(() {});
                                                        }

                                                        context.pushNamed(
                                                            DashboardScreenWidget
                                                                .routeName);

                                                        safeSetState(() {});
                                                      },
                                                      child: Container(
                                                        width: 66.0,
                                                        height: 30.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFFFBE7E9),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20.0),
                                                        ),
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Text(
                                                            'Reject',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .mulish(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tableText2,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        _model.operation =
                                                            getJsonField(
                                                          pdRequestTableItem,
                                                          r'''$.ACTION_TYPE''',
                                                        ).toString();
                                                        _model.tableId =
                                                            getJsonField(
                                                          pdRequestTableItem,
                                                          r'''$.TABLE_ID''',
                                                        ).toString();
                                                        _model.recordId =
                                                            getJsonField(
                                                          pdRequestTableItem,
                                                          r'''$.RECORD_ID''',
                                                        ).toString();
                                                        safeSetState(() {});
                                                        if (_model.operation ==
                                                            'UPDATE') {
                                                          FFAppState()
                                                                  .editJson =
                                                              functions
                                                                  .rawjsonTojson(
                                                                      pdRequestTableItem);
                                                          safeSetState(() {});
                                                          _model.searchID = functions
                                                              .extractIdHostUrl(
                                                                  getJsonField(
                                                                    pdRequestTableItem,
                                                                    r'''$.RAW_JSON''',
                                                                  ).toString(),
                                                                  'ID');
                                                          safeSetState(() {});
                                                          _model.hostresult =
                                                              await TablesGetApiCallCall
                                                                  .call(
                                                            tableCode:
                                                                _model.dropdownSelectedValue ==
                                                                        'SYS'
                                                                    ? 'SYS'
                                                                    : 'UPIHOST',
                                                            limit: 5,
                                                            offset: 0,
                                                            sortColumn: 'ID',
                                                            direction: 'ASC',
                                                            filtersColumn: 'ID',
                                                            filterValue:
                                                                _model.searchID,
                                                            operator: '=',
                                                          );

                                                          FFAppState()
                                                                  .pendingRequestViewOption =
                                                              true;
                                                          safeSetState(() {});
                                                          if ((_model.hostresult
                                                                  ?.succeeded ??
                                                              true)) {
                                                            FFAppState().djson =
                                                                getJsonField(
                                                              (_model.hostresult
                                                                      ?.jsonBody ??
                                                                  ''),
                                                              r'''$.data[0]''',
                                                            );
                                                            safeSetState(() {});
                                                          }
                                                        } else {
                                                          FFAppState()
                                                                  .addDeleteBool =
                                                              true;
                                                          safeSetState(() {});
                                                          FFAppState()
                                                                  .editJson =
                                                              functions
                                                                  .rawjsonTojson(
                                                                      pdRequestTableItem);
                                                          safeSetState(() {});
                                                        }

                                                        safeSetState(() {});
                                                      },
                                                      child: Icon(
                                                        Icons
                                                            .remove_red_eye_outlined,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 12.0)),
                                                ),
                                              ]
                                                  .map((c) => DataCell(c))
                                                  .toList(),
                                            ),
                                            paginated: false,
                                            selectable: false,
                                            headingRowHeight: 64.0,
                                            dataRowHeight: 64.0,
                                            columnSpacing: 8.0,
                                            headingRowColor:
                                                FlutterFlowTheme.of(context)
                                                    .tableHeaderColor,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            addHorizontalDivider: true,
                                            addTopAndBottomDivider: false,
                                            hideDefaultHorizontalDivider: true,
                                            horizontalDividerColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            horizontalDividerThickness: 1.0,
                                            addVerticalDivider: false,
                                          );
                                        },
                                      );
                                    } else {
                                      return Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          'Something went wrong or Data not found',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.mulish(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 15.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      );
                                    }
                                  },
                                ),
                              );
                            } else {
                              return Container(
                                height: 490.0,
                                decoration: BoxDecoration(),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Lottie.asset(
                                    'assets/jsons/ICICICitrus_gradient_loader.json',
                                    width: 75.0,
                                    height: 75.0,
                                    fit: BoxFit.contain,
                                    animate: true,
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                      ),
                      if (_model.totalPages! > 1)
                        Align(
                          alignment: AlignmentDirectional(1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 10.0, 20.0),
                            child: Container(
                              width: 450.0,
                              height: 45.0,
                              child: custom_widgets.PaginationWithDots(
                                width: 450.0,
                                height: 45.0,
                                indexFull: _model.totalPages!,
                                listttt: (indexSelected) async {
                                  _model.pendingRequestApiiiii =
                                      await TablesGetApiCallCall.call(
                                    tableCode: 'UPITEMP',
                                    limit: 5,
                                    tempTableName:
                                        _model.dropdownSelectedValue == 'SYS'
                                            ? 'SYS'
                                            : 'UPIHOST',
                                    direction: 'DESC',
                                    offset: indexSelected,
                                    sortColumn: 'ID',
                                    userId: 'BAN471425',
                                  );

                                  if ((_model
                                          .pendingRequestApiiiii?.succeeded ??
                                      true)) {
                                    _model.jsonPendingReqRes = getJsonField(
                                      (_model.pendingRequestApiiiii?.jsonBody ??
                                          ''),
                                      r'''$.data''',
                                    );
                                    _model.updatePage(() {});
                                  } else {
                                    _model.updatePage(() {});
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('Alert'),
                                          content: Text('something went wrong'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }

                                  _model.isLoading = false;
                                  _model.updatePage(() {});

                                  safeSetState(() {});
                                },
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            if (FFAppState().pendingRequestViewOption == true)
              Expanded(
                child: Container(
                  decoration: BoxDecoration(),
                  child: wrapWithModel(
                    model: _model.pendingRequestViewComModel,
                    updateCallback: () => safeSetState(() {}),
                    child: PendingRequestViewComWidget(
                      tableId: _model.tableId!,
                      recordId: _model.recordId!,
                      ddSelected: _model.dropdownSelectedValue,
                      action: () async {},
                    ),
                  ),
                ),
              ),
            if (FFAppState().addDeleteBool == true)
              Expanded(
                child: Container(
                  decoration: BoxDecoration(),
                  child: wrapWithModel(
                    model: _model.addDeleteRecordsListModel,
                    updateCallback: () => safeSetState(() {}),
                    child: AddDeleteRecordsListWidget(
                      tableId: _model.tableId!,
                      recordId: _model.recordId!,
                      ddSelected: _model.dropdownSelectedValue,
                      action: () async {},
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
