import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/add_host_fields_widget.dart';
import '/components/delete_dialog_widget.dart';
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
import 'upi_comp_copy_model.dart';
export 'upi_comp_copy_model.dart';

class UpiCompCopyWidget extends StatefulWidget {
  const UpiCompCopyWidget({
    super.key,
    String? parameter1,
  }) : this.parameter1 = parameter1 ?? '';

  final String parameter1;

  @override
  State<UpiCompCopyWidget> createState() => _UpiCompCopyWidgetState();
}

class _UpiCompCopyWidgetState extends State<UpiCompCopyWidget> {
  late UpiCompCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UpiCompCopyModel());
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
                  () {
                    if (widget!.parameter1 == '2') {
                      return 'UPI HOST';
                    } else if (widget!.parameter1 == '3') {
                      return 'SYS';
                    } else {
                      return 'UPI HOST';
                    }
                  }(),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.mulish(
                          fontWeight: FontWeight.w500,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).headingColor,
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
                            inputVal: widget!.parameter1,
                            callBack: () async {
                              var _shouldSetState = false;
                              if (_model.searchCompModel.textController.text !=
                                      null &&
                                  _model.searchCompModel.textController.text !=
                                      '') {
                                _model.isSuccess = false;
                                _model.viewClick = false;
                                _model.updatePage(() {});
                                FFAppState().searchVal =
                                    _model.searchCompModel.textController.text;
                                FFAppState().update(() {});
                                _model.isLoading = true;
                                _model.updatePage(() {});
                                _model.apiResult2 =
                                    await TablesGetApiCallCall.call(
                                  tableCode: () {
                                    if (widget!.parameter1 == 'upiHost') {
                                      return 'UPIHOST';
                                    } else if (widget!.parameter1 == 'upiSms') {
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
                                    if (widget!.parameter1 == 'upiHost') {
                                      return 'HOST';
                                    } else if (widget!.parameter1 == 'upiSms') {
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
                                  _model.updatePage(() {});
                                  _model.viewClick = true;
                                  _model.isSuccess = true;
                                  _model.updatePage(() {});
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
                              _model.isSuccess = false;
                              _model.updatePage(() {});
                              _model.apiResult2e =
                                  await TablesGetApiCallCall.call(
                                tableCode: () {
                                  if (widget!.parameter1 == '2') {
                                    return 'UPIHOST';
                                  } else if (widget!.parameter1 == '3') {
                                    return 'SYS';
                                  } else {
                                    return 'UPIHOST';
                                  }
                                }(),
                                limit: 5,
                                offset: 0,
                                sortColumn: 'HOST',
                                direction: 'ASC',
                                filtersColumn: () {
                                  if (widget!.parameter1 == '2') {
                                    return 'HOST';
                                  } else if (widget!.parameter1 == '3') {
                                    return 'ID';
                                  } else {
                                    return 'HOST';
                                  }
                                }(),
                                filterValue:
                                    _model.searchCompModel.textController.text,
                                operator: 'LIKE',
                              );

                              _shouldSetState = true;
                              if ((_model.apiResult2e?.succeeded ?? true)) {
                                FFAppState().token = getJsonField(
                                  (_model.apiResult2e?.jsonBody ?? ''),
                                  r'''$.token''',
                                ).toString();
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
                                _model.updatePage(() {});
                                _model.isSuccess = false;
                                _model.updatePage(() {});
                                if (_shouldSetState) safeSetState(() {});
                                return;
                              } else {
                                _model.isLoading = false;
                                _model.updatePage(() {});
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Something went wrong'),
                                      content: Text('-'),
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
                            addNewHostCalllBack: () async {
                              var _shouldSetState = false;
                              _model.fieldsdetails =
                                  await TablesGetApiCallCall.call(
                                tableCode: () {
                                  if (widget!.parameter1 == '2') {
                                    return 'UPIHOST';
                                  } else if (widget!.parameter1 == '3') {
                                    return 'SYS';
                                  } else {
                                    return 'UPIHOST';
                                  }
                                }(),
                                limit: 5,
                                offset: 0,
                                sortColumn: 'ID',
                                direction: 'ASC',
                                filtersColumn: () {
                                  if (widget!.parameter1 == '2') {
                                    return 'HOST';
                                  } else if (widget!.parameter1 == '3') {
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
                                FFAppState().token = getJsonField(
                                  (_model.fieldsdetails?.jsonBody ?? ''),
                                  r'''$.data''',
                                ).toString();
                                FFAppState().update(() {});
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
                  if ((getJsonField(
                            (_model.apiResult2e?.jsonBody ?? ''),
                            r'''$.data''',
                          ) !=
                          null) &&
                      _model.isSuccess)
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
                                        () {
                                          if (widget!.parameter1 == '2') {
                                            return 'HOST';
                                          } else if (widget!.parameter1 ==
                                              '3') {
                                            return 'VALUE';
                                          } else {
                                            return 'HOST';
                                          }
                                        }(),
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
                                        () {
                                          if (widget!.parameter1 == '2') {
                                            return 'URL';
                                          } else if (widget!.parameter1 ==
                                              '3') {
                                            return 'DATA_TYPE';
                                          } else {
                                            return 'URL';
                                          }
                                        }(),
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
                                      () {
                                        if (widget!.parameter1 == '2') {
                                          return valueOrDefault<String>(
                                            getJsonField(
                                              dbItem,
                                              r'''$.HOST''',
                                            )?.toString(),
                                            'FALCON-ASYNC-FINANCIAL',
                                          );
                                        } else if (widget!.parameter1 == '3') {
                                          return valueOrDefault<String>(
                                            getJsonField(
                                              dbItem,
                                              r'''$.VALUE''',
                                            )?.toString(),
                                            'FALCON-ASYNC-FINANCIAL',
                                          );
                                        } else {
                                          return valueOrDefault<String>(
                                            getJsonField(
                                              dbItem,
                                              r'''$.HOST''',
                                            )?.toString(),
                                            'FALCON-ASYNC-FINANCIAL',
                                          );
                                        }
                                      }(),
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
                                      () {
                                        if (widget!.parameter1 == '2') {
                                          return valueOrDefault<String>(
                                            getJsonField(
                                              dbItem,
                                              r'''$.URL''',
                                            )?.toString(),
                                            'FALCON-ASYNC-FINANCIAL',
                                          );
                                        } else if (widget!.parameter1 == '3') {
                                          return valueOrDefault<String>(
                                            getJsonField(
                                              dbItem,
                                              r'''$.DATA_TYPE''',
                                            )?.toString(),
                                            'FALCON-ASYNC-FINANCIAL',
                                          );
                                        } else {
                                          return valueOrDefault<String>(
                                            getJsonField(
                                              dbItem,
                                              r'''$.HOST''',
                                            )?.toString(),
                                            'FALCON-ASYNC-FINANCIAL',
                                          );
                                        }
                                      }(),
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
                                        Builder(
                                          builder: (context) => Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    22.0, 0.0, 0.0, 0.0),
                                            child: InkWell(
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
                                                      child: DeleteDialogWidget(
                                                        actionCallback:
                                                            () async {
                                                          _model.apiResultwfd =
                                                              await DeleteOperationApiCall
                                                                  .call(
                                                            operationType:
                                                                'DELETE',
                                                            tableId: () {
                                                              if (widget!
                                                                      .parameter1 ==
                                                                  '2') {
                                                                return 'UPIHOST';
                                                              } else if (widget!
                                                                      .parameter1 ==
                                                                  '3') {
                                                                return 'SYS';
                                                              } else {
                                                                return 'UPIHOST';
                                                              }
                                                            }(),
                                                            recordId:
                                                                getJsonField(
                                                              dbItem,
                                                              r'''$.ID''',
                                                            ).toString(),
                                                            createdBy:
                                                                valueOrDefault<
                                                                    String>(
                                                              FFAppState()
                                                                  .userid,
                                                              'ADMIN',
                                                            ),
                                                            token: FFAppState()
                                                                .token,
                                                            deviceHash:
                                                                'deviceHash',
                                                          );

                                                          if ((_model
                                                                  .apiResultwfd
                                                                  ?.succeeded ??
                                                              true)) {
                                                            FFAppState().token =
                                                                valueOrDefault<
                                                                    String>(
                                                              getJsonField(
                                                                (_model.apiResultwfd
                                                                        ?.jsonBody ??
                                                                    ''),
                                                                r'''$.token''',
                                                              )?.toString(),
                                                              'accessToken',
                                                            );
                                                            safeSetState(() {});
                                                          } else {
                                                            await showDialog(
                                                              context: context,
                                                              builder:
                                                                  (alertDialogContext) {
                                                                return AlertDialog(
                                                                  title: Text(
                                                                      'Alert'),
                                                                  content: Text(
                                                                      'something went wrong'),
                                                                  actions: [
                                                                    TextButton(
                                                                      onPressed:
                                                                          () =>
                                                                              Navigator.pop(alertDialogContext),
                                                                      child: Text(
                                                                          'Ok'),
                                                                    ),
                                                                  ],
                                                                );
                                                              },
                                                            );
                                                          }
                                                        },
                                                      ),
                                                    );
                                                  },
                                                );

                                                safeSetState(() {});
                                              },
                                              child: Container(
                                                width: 45.0,
                                                height: 45.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .bgColor2,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          24.0),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
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
