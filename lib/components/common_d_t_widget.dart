import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/add_host_fields_widget.dart';
import '/components/new_dynamic_edit_fields_widget.dart';
import '/components/search_comp_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'common_d_t_model.dart';
export 'common_d_t_model.dart';

class CommonDTWidget extends StatefulWidget {
  const CommonDTWidget({
    super.key,
    String? heading,
    this.header2,
    this.header3,
  }) : this.heading = heading ?? '';

  final String heading;
  final String? header2;
  final String? header3;

  @override
  State<CommonDTWidget> createState() => _CommonDTWidgetState();
}

class _CommonDTWidgetState extends State<CommonDTWidget> {
  late CommonDTModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommonDTModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 12.0),
                child: Text(
                  widget!.heading,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.mulish(
                          fontWeight: FontWeight.w500,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).primary,
                        fontSize: 32.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Builder(
                      builder: (context) => Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            18.0, 14.0, 18.0, 0.0),
                        child: wrapWithModel(
                          model: _model.searchCompModel,
                          updateCallback: () => safeSetState(() {}),
                          child: SearchCompWidget(
                            inputVal: '',
                            callBack: () async {
                              var _shouldSetState = false;
                              if (_model.searchCompModel.textController.text !=
                                      null &&
                                  _model.searchCompModel.textController.text !=
                                      '') {
                                _model.isSuccess = false;
                                _model.viewClick = false;
                                safeSetState(() {});
                                FFAppState().searchVal =
                                    _model.searchCompModel.textController.text;
                                FFAppState().update(() {});
                                _model.isLoading = true;
                                safeSetState(() {});
                                _model.apiResult2 =
                                    await TablesGetApiCallCall.call(
                                  tableCode: () {
                                    if (widget!.heading == 'upiHost') {
                                      return 'UPIHOST';
                                    } else if (widget!.heading == 'upiSms') {
                                      return 'UPISMS';
                                    } else {
                                      return 'SYS';
                                    }
                                  }(),
                                  limit: 1,
                                  offset: 0,
                                  sortColumn: 'ID',
                                  direction: 'ASC',
                                  filtersColumn: () {
                                    if (widget!.heading == 'upiHost') {
                                      return 'HOST';
                                    } else if (widget!.heading == 'upiSms') {
                                      return 'ID';
                                    } else {
                                      return 'ID';
                                    }
                                  }(),
                                  filterValue: _model
                                      .searchCompModel.textController.text,
                                );

                                _shouldSetState = true;
                                if ((_model.apiResult2?.succeeded ?? true)) {
                                  _model.dataTableStructure =
                                      functions.dynamicDataTableConvert(
                                          (_model.apiResult2?.jsonBody ?? ''));
                                  safeSetState(() {});
                                  _model.viewClick = true;
                                  _model.isSuccess = true;
                                  safeSetState(() {});
                                  if (_shouldSetState) safeSetState(() {});
                                  return;
                                } else {
                                  _model.isLoading = false;
                                  safeSetState(() {});
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Something went wroung'),
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
                                  if (_shouldSetState) safeSetState(() {});
                                  return;
                                }
                              } else {
                                _model.isSuccess = false;
                                safeSetState(() {});
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Please enter Host'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              }

                              if (_shouldSetState) safeSetState(() {});
                            },
                            onChnagedCallBack: () async {
                              var _shouldSetState = false;
                              if (_model.searchCompModel.textController.text !=
                                      null &&
                                  _model.searchCompModel.textController.text !=
                                      '') {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('ok'),
                                      content: Text('ok'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                                _model.apiResult2e =
                                    await TablesGetApiCallCall.call(
                                  tableCode: () {
                                    if (widget!.heading == 'upiHost') {
                                      return 'UPIHOST';
                                    } else if (widget!.heading == 'upiSms') {
                                      return 'UPISMS';
                                    } else {
                                      return 'UPIHOST';
                                    }
                                  }(),
                                  limit: 5,
                                  offset: 0,
                                  sortColumn: 'ID',
                                  direction: 'ASC',
                                  filtersColumn: () {
                                    if (widget!.heading == 'upiHost') {
                                      return 'HOST';
                                    } else if (widget!.heading == 'upiSms') {
                                      return 'ID';
                                    } else {
                                      return 'ID';
                                    }
                                  }(),
                                  filterValue: _model
                                      .searchCompModel.textController.text,
                                );

                                _shouldSetState = true;
                                if ((_model.apiResult2e?.succeeded ?? true)) {
                                  _model.dataTableList = (getJsonField(
                                    (_model.apiResult2e?.jsonBody ?? ''),
                                    r'''$.data''',
                                    true,
                                  )!
                                          .toList()
                                          .map<DataStruct?>(
                                              DataStruct.maybeFromMap)
                                          .toList() as Iterable<DataStruct?>)
                                      .withoutNulls
                                      .toList()
                                      .cast<DataStruct>();
                                  safeSetState(() {});
                                  if (_shouldSetState) safeSetState(() {});
                                  return;
                                } else {
                                  _model.isLoading = false;
                                  safeSetState(() {});
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Something went wroung'),
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
                                  if (_shouldSetState) safeSetState(() {});
                                  return;
                                }
                              } else {
                                _model.isSuccess = false;
                                safeSetState(() {});
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Please enter Host'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              }

                              if (_shouldSetState) safeSetState(() {});
                            },
                            addNewHostCalllBack: () async {
                              var _shouldSetState = false;
                              _model.fieldsdetails =
                                  await TablesGetApiCallCall.call(
                                tableCode: () {
                                  if (widget!.heading == 'upiHost') {
                                    return 'UPIHOST';
                                  } else if (widget!.heading == 'upiSms') {
                                    return 'UPISMS';
                                  } else {
                                    return 'UPIHOST';
                                  }
                                }(),
                                limit: 5,
                                offset: 0,
                                sortColumn: 'ID',
                                direction: 'ASC',
                                filtersColumn: () {
                                  if (widget!.heading == 'upiHost') {
                                    return 'HOST';
                                  } else if (widget!.heading == 'upiSms') {
                                    return 'ID';
                                  } else {
                                    return 'ID';
                                  }
                                }(),
                                filterValue:
                                    _model.searchCompModel.textController.text,
                              );

                              _shouldSetState = true;
                              if ((_model.fieldsdetails?.succeeded ?? true)) {
                                await showDialog(
                                  context: context,
                                  builder: (dialogContext) {
                                    return Dialog(
                                      elevation: 0,
                                      insetPadding: EdgeInsets.zero,
                                      backgroundColor: Colors.transparent,
                                      alignment: AlignmentDirectional(0.0, 0.0)
                                          .resolve(Directionality.of(context)),
                                      child: AddHostFieldsWidget(
                                        dataTableNewModel:
                                            functions.dynamicDataTableConvert(
                                                getJsonField(
                                          (_model.fieldsdetails?.jsonBody ??
                                              ''),
                                          r'''$''',
                                        )),
                                      ),
                                    );
                                  },
                                );

                                if (_shouldSetState) safeSetState(() {});
                                return;
                              } else {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Something went wroung'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                                if (_shouldSetState) safeSetState(() {});
                                return;
                              }

                              if (_shouldSetState) safeSetState(() {});
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  if (getJsonField(
                        (_model.apiResult2e?.jsonBody ?? ''),
                        r'''$.data''',
                      ) !=
                      null)
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: Builder(
                            builder: (context) {
                              final db = getJsonField(
                                (_model.apiResult2e?.jsonBody ?? ''),
                                r'''$.data''',
                              ).toList();

                              return FlutterFlowDataTable<dynamic>(
                                controller: _model.paginatedDataTableController,
                                data: db,
                                columnsBuilder: (onSortChanged) => [
                                  DataColumn2(
                                    label: DefaultTextStyle.merge(
                                      softWrap: true,
                                      child: Text(
                                        'ID',
                                        style: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              font: GoogleFonts.mulish(
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
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
                                        valueOrDefault<String>(
                                          widget!.header2,
                                          'HOST',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              font: GoogleFonts.mulish(
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
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
                                        valueOrDefault<String>(
                                          widget!.header3,
                                          'URL',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              font: GoogleFonts.mulish(
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
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
                                        'ACTIONS',
                                        style: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              font: GoogleFonts.mulish(
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .fontStyle,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                                dataRowBuilder: (dbItem, dbIndex, selected,
                                        onSelectChanged) =>
                                    DataRow(
                                  color: MaterialStateProperty.all(
                                    dbIndex % 2 == 0
                                        ? FlutterFlowTheme.of(context)
                                            .tableRowColor
                                        : Colors.white,
                                  ),
                                  cells: [
                                    Text(
                                      valueOrDefault<String>(
                                        getJsonField(
                                          dbItem,
                                          r'''$.ID''',
                                        )?.toString(),
                                        'OOP1',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.mulish(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                    Text(
                                      valueOrDefault<String>(
                                        getJsonField(
                                          dbItem,
                                          r'''$.HOST''',
                                        )?.toString(),
                                        'FALCON-ASYNC-FINANCIAL',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.mulish(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                    Text(
                                      valueOrDefault<String>(
                                        getJsonField(
                                          dbItem,
                                          r'''$.URL''',
                                        )?.toString(),
                                        '10.230.88.24:7701/UPI',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.mulish(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        if (responsiveVisibility(
                                          context: context,
                                          phone: false,
                                          tablet: false,
                                          tabletLandscape: false,
                                          desktop: false,
                                        ))
                                          Builder(
                                            builder: (context) => InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                await showDialog(
                                                  context: context,
                                                  builder: (dialogContext) {
                                                    return Dialog(
                                                      elevation: 0,
                                                      insetPadding:
                                                          EdgeInsets.zero,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      alignment:
                                                          AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                      child:
                                                          NewDynamicEditFieldsWidget(
                                                        dataTableNewModel: functions
                                                            .dynamicDataTableConvertCopy(
                                                                dbItem),
                                                        indexEdit: dbIndex,
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              child: Text(
                                                'Edit',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.mulish(
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
                                                      decoration: TextDecoration
                                                          .underline,
                                                    ),
                                              ),
                                            ),
                                          ),
                                        Container(
                                          width: 45.0,
                                          height: 45.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .bgColor4,
                                            borderRadius:
                                                BorderRadius.circular(24.0),
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Builder(
                                              builder: (context) => InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await showDialog(
                                                    context: context,
                                                    builder: (dialogContext) {
                                                      return Dialog(
                                                        elevation: 0,
                                                        insetPadding:
                                                            EdgeInsets.zero,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        alignment:
                                                            AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                        child:
                                                            NewDynamicEditFieldsWidget(
                                                          indexEdit: dbIndex,
                                                          dataTableNewModel:
                                                              functions
                                                                  .dynamicDataTableConvertCopy(
                                                                      dbItem),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                                child: Icon(
                                                  Icons.edit_square,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .headingColor,
                                                  size: 24.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  22.0, 0.0, 0.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.apiResultwfd =
                                                  await DeleteOperationApiCall
                                                      .call(
                                                createdBy: 'admin',
                                                operationType: 'DELETE',
                                                recordId: '141',
                                                tableId: 'UPIHOST',
                                              );

                                              if ((_model.apiResultwfd
                                                      ?.succeeded ??
                                                  true)) {
                                                FFAppState().token =
                                                    getJsonField(
                                                  (_model.apiResultwfd
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.token''',
                                                ).toString();
                                                safeSetState(() {});
                                              } else {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: Text('Alert'),
                                                      content: Text(
                                                          'something went wrong'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
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
                                            child: Container(
                                              width: 45.0,
                                              height: 45.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .bgColor2,
                                                borderRadius:
                                                    BorderRadius.circular(24.0),
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Icon(
                                                  Icons.delete,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tableText2,
                                                  size: 24.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ].map((c) => DataCell(c)).toList(),
                                ),
                                paginated: false,
                                selectable: false,
                                height: 450.0,
                                headingRowHeight: 64.0,
                                dataRowHeight: 64.0,
                                columnSpacing: 20.0,
                                headingRowColor: FlutterFlowTheme.of(context)
                                    .tableHeaderColor,
                                borderRadius: BorderRadius.circular(8.0),
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
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
