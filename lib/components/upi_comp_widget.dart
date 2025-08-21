import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/add_host_fields_widget.dart';
import '/components/delete_dialog_widget.dart';
import '/components/empty_page_display_widget.dart';
import '/components/error_message_dialog_widget.dart';
import '/components/new_dynamic_edit_fields_widget.dart';
import '/components/search_comp_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'upi_comp_model.dart';
export 'upi_comp_model.dart';

class UpiCompWidget extends StatefulWidget {
  const UpiCompWidget({
    super.key,
    String? sidebarSelected,
    bool? tablebool,
  })  : this.sidebarSelected = sidebarSelected ?? '',
        this.tablebool = tablebool ?? false;

  final String sidebarSelected;
  final bool tablebool;

  @override
  State<UpiCompWidget> createState() => _UpiCompWidgetState();
}

class _UpiCompWidgetState extends State<UpiCompWidget> {
  late UpiCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UpiCompModel());

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

    return Container(
      width: MediaQuery.sizeOf(context).width * 0.8,
      height: MediaQuery.sizeOf(context).height * 0.75,
      decoration: BoxDecoration(),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 0.0, 15.0),
                  child: Text(
                    () {
                      if (widget.sidebarSelected == '2') {
                        return 'UPIHOST';
                      } else if (widget.sidebarSelected == '3') {
                        return 'SYS';
                      } else if (widget.sidebarSelected == '4') {
                        return 'UPICOMPLAINT';
                      } else if (widget.sidebarSelected == '5') {
                        return 'UPICOUNTRY';
                      } else if (widget.sidebarSelected == '6') {
                        return 'UPISMS';
                      } else if (widget.sidebarSelected == '7') {
                        return 'UPISOURCESUB';
                      } else if (widget.sidebarSelected == '8') {
                        return 'UPIFRM';
                      } else if (widget.sidebarSelected == '9') {
                        return 'UPITRANSACTION';
                      } else if (widget.sidebarSelected == '10') {
                        return 'UPIBANK';
                      } else if (widget.sidebarSelected == '11') {
                        return 'UPISOURCE';
                      } else if (widget.sidebarSelected == '12') {
                        return 'INTEROPERABLE';
                      } else {
                        return 'UPIHOST';
                      }
                    }(),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Mulish',
                          color: FlutterFlowTheme.of(context).headingColor,
                          fontSize: 32.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
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
                              10.0, 14.0, 18.0, 0.0),
                          child: wrapWithModel(
                            model: _model.searchCompModel,
                            updateCallback: () => safeSetState(() {}),
                            child: SearchCompWidget(
                              sidebarSelected: widget.sidebarSelected,
                              callBack: () async {
                                if (_model.searchCompModel.textController
                                            .text !=
                                        '') {
                                  FFAppState().searchVal = _model
                                      .searchCompModel.textController.text;
                                  _model.initialView = false;
                                  _model.searchedIndex = false;
                                  _model.updatePage(() {});
                                  _model.searchAPIs =
                                      await TablesGetApiCallCall.call(
                                    tableCode: () {
                                      if (widget.sidebarSelected == '2') {
                                        return 'UPIHOST';
                                      } else if (widget.sidebarSelected ==
                                          '3') {
                                        return 'SYS';
                                      } else if (widget.sidebarSelected ==
                                          '4') {
                                        return 'UPICOMPLAINT';
                                      } else if (widget.sidebarSelected ==
                                          '5') {
                                        return 'UPICOUNTRY';
                                      } else if (widget.sidebarSelected ==
                                          '6') {
                                        return 'UPISMS';
                                      } else if (widget.sidebarSelected ==
                                          '7') {
                                        return 'UPISOURCESUB';
                                      } else if (widget.sidebarSelected ==
                                          '8') {
                                        return 'UPIFRM';
                                      } else if (widget.sidebarSelected ==
                                          '9') {
                                        return 'UPITRANSACTION';
                                      } else if (widget.sidebarSelected ==
                                          '10') {
                                        return 'UPIBANK';
                                      } else if (widget.sidebarSelected ==
                                          '11') {
                                        return 'UPISOURCECHANNELS';
                                      } else if (widget.sidebarSelected ==
                                          '12') {
                                        return 'UPIINTEROPERABLE';
                                      } else {
                                        return 'UPIHOST';
                                      }
                                    }(),
                                    limit: 5,
                                    offset: 0,
                                    direction: 'ASC',
                                    operator: 'LIKE',
                                    sortColumn: () {
                                      if (widget.sidebarSelected == '2') {
                                        return 'HOST';
                                      } else if (widget.sidebarSelected ==
                                          '3') {
                                        return 'ID';
                                      } else if (widget.sidebarSelected ==
                                          '4') {
                                        return 'ID';
                                      } else if (widget.sidebarSelected ==
                                          '5') {
                                        return 'UPICOUNTRY';
                                      } else if (widget.sidebarSelected ==
                                          '6') {
                                        return 'NAME';
                                      } else if (widget.sidebarSelected ==
                                          '7') {
                                        return 'NAME';
                                      } else if (widget.sidebarSelected ==
                                          '8') {
                                        return 'ACCOUNT_NUMBER';
                                      } else if (widget.sidebarSelected ==
                                          '9') {
                                        return 'CHANNEL_CODE';
                                      } else if (FFAppState().selectedSidebar ==
                                          '10') {
                                        return 'ACCOUNT_NUMBER';
                                      } else if (FFAppState().selectedSidebar ==
                                          '11') {
                                        return 'NAME';
                                      } else if (FFAppState().selectedSidebar ==
                                          '12') {
                                        return '12';
                                      } else {
                                        return 'HOST';
                                      }
                                    }(),
                                    filtersColumn: () {
                                      if (widget.sidebarSelected == '2') {
                                        return 'HOST';
                                      } else if (widget.sidebarSelected ==
                                          '3') {
                                        return 'ID';
                                      } else if (widget.sidebarSelected ==
                                          '4') {
                                        return 'ID';
                                      } else if (widget.sidebarSelected ==
                                          '5') {
                                        return 'COUNTRY_NAME';
                                      } else if (widget.sidebarSelected ==
                                          '6') {
                                        return 'NAME';
                                      } else if (widget.sidebarSelected ==
                                          '7') {
                                        return 'NAME';
                                      } else if (widget.sidebarSelected ==
                                          '8') {
                                        return 'ACCOUNT_NUMBER';
                                      } else if (widget.sidebarSelected ==
                                          '9') {
                                        return 'CHANNEL_CODE';
                                      } else if (widget.sidebarSelected ==
                                          '10') {
                                        return 'ACCOUNT_NUMBER';
                                      } else if (widget.sidebarSelected ==
                                          '11') {
                                        return 'NAME';
                                      } else if (widget.sidebarSelected ==
                                          '12') {
                                        return 'NAME';
                                      } else {
                                        return 'HOST';
                                      }
                                    }(),
                                    filterValue: _model
                                        .searchCompModel.textController.text,
                                  );

                                  if ((_model.searchAPIs?.succeeded ?? true)) {
                                    FFAppState().token = getJsonField(
                                      (_model.searchAPIs?.jsonBody ?? ''),
                                      r'''$.token''',
                                    ).toString();
                                    FFAppState().isInitialSearch = true;
                                    FFAppState().update(() {});
                                    _model.jsonBodyReqRes = getJsonField(
                                      (_model.searchAPIs?.jsonBody ?? ''),
                                      r'''$.data''',
                                    );
                                    _model.initialView = true;
                                    _model.totalPages = getJsonField(
                                      (_model.searchAPIs?.jsonBody ?? ''),
                                      r'''$.pageCount''',
                                    );
                                    _model.updatePage(() {});
                                  } else {
                                    _model.isLoading = false;
                                    _model.initialView = false;
                                    _model.updatePage(() {});
                                    await showDialog(
                                      context: context,
                                      builder: (dialogContext) {
                                        return Dialog(
                                          elevation: 0,
                                          insetPadding: EdgeInsets.zero,
                                          backgroundColor: Colors.transparent,
                                          alignment: AlignmentDirectional(
                                                  0.0, 0.0)
                                              .resolve(
                                                  Directionality.of(context)),
                                          child: ErrorMessageDialogWidget(
                                            errorMessageBody:
                                                'Something went wrong',
                                            titleValue: 'Alert',
                                          ),
                                        );
                                      },
                                    );

                                    FFAppState().isInitialSearch = false;
                                    FFAppState().update(() {});
                                  }
                                } else {
                                  await showDialog(
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: ErrorMessageDialogWidget(
                                          errorMessageBody:
                                              'Please search something',
                                          titleValue: 'Alert',
                                        ),
                                      );
                                    },
                                  );
                                }

                                safeSetState(() {});
                              },
                              onChnagedCallBack: () async {},
                              addNewHostCalllBack: () async {
                                var _shouldSetState = false;
                                _model.fieldsdetails =
                                    await TablesGetApiCallCall.call(
                                  tableCode: () {
                                    if (widget.sidebarSelected == '2') {
                                      return 'UPIHOST';
                                    } else if (widget.sidebarSelected == '3') {
                                      return 'SYS';
                                    } else if (widget.sidebarSelected == '4') {
                                      return 'UPICOMPLAINT';
                                    } else if (widget.sidebarSelected == '5') {
                                      return 'UPICOUNTRY';
                                    } else if (widget.sidebarSelected == '6') {
                                      return 'UPISMS';
                                    } else if (widget.sidebarSelected == '7') {
                                      return 'UPISOURCESUB';
                                    } else if (widget.sidebarSelected == '8') {
                                      return 'UPIFRM';
                                    } else if (widget.sidebarSelected == '9') {
                                      return 'UPITRANSACTION';
                                    } else if (widget.sidebarSelected ==
                                        '10') {
                                      return 'UPIBANK';
                                    } else if (widget.sidebarSelected ==
                                        '11') {
                                      return 'UPISOURCECHANNELS';
                                    } else if (widget.sidebarSelected ==
                                        '12') {
                                      return 'UPIINTEROPERABLE';
                                    } else {
                                      return 'UPIHOST';
                                    }
                                  }(),
                                  limit: 5,
                                  offset: 0,
                                  sortColumn: 'ID',
                                  direction: 'ASC',
                                  filtersColumn: () {
                                    if (widget.sidebarSelected == '2') {
                                      return 'HOST';
                                    } else if (widget.sidebarSelected == '3') {
                                      return 'ID';
                                    } else {
                                      return 'ID';
                                    }
                                  }(),
                                  filterValue: _model
                                      .searchCompModel.textController.text,
                                  userId: FFAppState().userid,
                                );

                                _shouldSetState = true;
                                if ((_model.fieldsdetails?.succeeded ?? true)) {
                                  FFAppState().token = getJsonField(
                                    (_model.fieldsdetails?.jsonBody ?? ''),
                                    r'''$.token''',
                                  ).toString();
                                  FFAppState().update(() {});
                                  await showDialog(
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
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
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: ErrorMessageDialogWidget(
                                          errorMessageBody:
                                              'Something went wrong',
                                          titleValue: 'Alert',
                                        ),
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
                    Builder(
                      builder: (context) {
                        if (_model.initialView) {
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 0.0),
                                child: Container(
                                  height: 450.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(0.0),
                                  ),
                                  child: Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        if (functions
                                                .jsonEmptyCheck(getJsonField(
                                              (_model.searchAPIs?.jsonBody ??
                                                  ''),
                                              r'''$.data''',
                                            ))! &&
                                            FFAppState().isInitialSearch)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 10.0, 0.0),
                                            child: Builder(
                                              builder: (context) {
                                                final db =
                                                    (_model.searchedIndex ==
                                                                    true
                                                                ? getJsonField(
                                                                    (_model.searchApiPaged
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                    r'''$.data''',
                                                                    true,
                                                                  )
                                                                : getJsonField(
                                                                    (_model.searchAPIs
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                    r'''$.data''',
                                                                    true,
                                                                  ))
                                                            ?.toList() ??
                                                        [];

                                                return FlutterFlowDataTable<
                                                    dynamic>(
                                                  controller: _model
                                                      .paginatedDataTableController,
                                                  data: db,
                                                  columnsBuilder:
                                                      (onSortChanged) => [
                                                    DataColumn2(
                                                      label: DefaultTextStyle
                                                          .merge(
                                                        softWrap: true,
                                                        child: Text(
                                                          'ID',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Mulish',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    DataColumn2(
                                                      label: DefaultTextStyle
                                                          .merge(
                                                        softWrap: true,
                                                        child: Text(
                                                          () {
                                                            if (widget
                                                                    .sidebarSelected ==
                                                                '2') {
                                                              return 'HOST';
                                                            } else if (widget
                                                                    .sidebarSelected ==
                                                                '3') {
                                                              return 'VALUE';
                                                            } else if (widget
                                                                    .sidebarSelected ==
                                                                '4') {
                                                              return 'REASON_CODE';
                                                            } else if (widget
                                                                    .sidebarSelected ==
                                                                '5') {
                                                              return 'COUNTRY_NAME';
                                                            } else if (widget
                                                                    .sidebarSelected ==
                                                                '6') {
                                                              return 'NAME';
                                                            } else if (widget
                                                                    .sidebarSelected ==
                                                                '7') {
                                                              return 'NAME';
                                                            } else if (widget
                                                                    .sidebarSelected ==
                                                                '8') {
                                                              return 'ACCOUNT_NUMBER';
                                                            } else if (widget
                                                                    .sidebarSelected ==
                                                                '9') {
                                                              return 'CHANNEL_CODE';
                                                            } else if (widget
                                                                    .sidebarSelected ==
                                                                '10') {
                                                              return 'ACCOUNT_NUMBER';
                                                            } else if (widget
                                                                    .sidebarSelected ==
                                                                '11') {
                                                              return 'NAME';
                                                            } else if (widget
                                                                    .sidebarSelected ==
                                                                '12') {
                                                              return 'NAME';
                                                            } else {
                                                              return 'HOST';
                                                            }
                                                          }(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Mulish',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    DataColumn2(
                                                      label: DefaultTextStyle
                                                          .merge(
                                                        softWrap: true,
                                                        child: Text(
                                                          () {
                                                            if (widget
                                                                    .sidebarSelected ==
                                                                '2') {
                                                              return 'URL';
                                                            } else if (widget
                                                                    .sidebarSelected ==
                                                                '3') {
                                                              return 'DATA_TYPE';
                                                            } else if (widget
                                                                    .sidebarSelected ==
                                                                '4') {
                                                              return 'TXN_TYPE';
                                                            } else if (widget
                                                                    .sidebarSelected ==
                                                                '5') {
                                                              return 'COUNTRY_CODE';
                                                            } else if (widget
                                                                    .sidebarSelected ==
                                                                '6') {
                                                              return 'TEMPLATE';
                                                            } else if (widget
                                                                    .sidebarSelected ==
                                                                '7') {
                                                              return 'CHANNEL_CODE';
                                                            } else if (widget
                                                                    .sidebarSelected ==
                                                                '8') {
                                                              return 'TXN_TYPE';
                                                            } else if (widget
                                                                    .sidebarSelected ==
                                                                '9') {
                                                              return 'CHANNEL_ID';
                                                            } else if (widget
                                                                    .sidebarSelected ==
                                                                '10') {
                                                              return 'MOBILE_NUMBER';
                                                            } else if (widget
                                                                    .sidebarSelected ==
                                                                '11') {
                                                              return 'CHANNEL_CODE';
                                                            } else if (widget
                                                                    .sidebarSelected ==
                                                                '12') {
                                                              return 'CHANNEL_CODE';
                                                            } else {
                                                              return 'URL';
                                                            }
                                                          }(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Mulish',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    DataColumn2(
                                                      label: DefaultTextStyle
                                                          .merge(
                                                        softWrap: true,
                                                        child: Text(
                                                          'ACTIONS',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Mulish',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                  dataRowBuilder: (dbItem,
                                                          dbIndex,
                                                          selected,
                                                          onSelectChanged) =>
                                                      DataRow(
                                                    color: WidgetStateProperty
                                                        .all(
                                                      dbIndex % 2 == 0
                                                          ? FlutterFlowTheme.of(
                                                                  context)
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
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Mulish',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                      Text(
                                                        () {
                                                          if (widget
                                                                  .sidebarSelected ==
                                                              '2') {
                                                            return valueOrDefault<
                                                                String>(
                                                              getJsonField(
                                                                dbItem,
                                                                r'''$.HOST''',
                                                              )?.toString(),
                                                              'FALCON-ASYNC-FINANCIAL',
                                                            );
                                                          } else if (widget
                                                                  .sidebarSelected ==
                                                              '3') {
                                                            return valueOrDefault<
                                                                String>(
                                                              getJsonField(
                                                                dbItem,
                                                                r'''$.VALUE''',
                                                              )?.toString(),
                                                              'FALCON-ASYNC-FINANCIAL',
                                                            );
                                                          } else if (widget
                                                                  .sidebarSelected ==
                                                              '4') {
                                                            return getJsonField(
                                                              dbItem,
                                                              r'''$.REASON_CODE''',
                                                            ).toString();
                                                          } else if (widget
                                                                  .sidebarSelected ==
                                                              '5') {
                                                            return getJsonField(
                                                              dbItem,
                                                              r'''$.COUNTRY_NAME''',
                                                            ).toString();
                                                          } else if (widget
                                                                  .sidebarSelected ==
                                                              '6') {
                                                            return getJsonField(
                                                              dbItem,
                                                              r'''$.NAME''',
                                                            ).toString();
                                                          } else if (widget
                                                                  .sidebarSelected ==
                                                              '7') {
                                                            return getJsonField(
                                                              dbItem,
                                                              r'''$.NAME''',
                                                            ).toString();
                                                          } else if (widget
                                                                  .sidebarSelected ==
                                                              '8') {
                                                            return getJsonField(
                                                              dbItem,
                                                              r'''$.ACCOUNT_NUMBER''',
                                                            ).toString();
                                                          } else if (widget
                                                                  .sidebarSelected ==
                                                              '9') {
                                                            return getJsonField(
                                                              dbItem,
                                                              r'''$.CHANNEL_CODE''',
                                                            ).toString();
                                                          } else if (widget
                                                                  .sidebarSelected ==
                                                              '10') {
                                                            return getJsonField(
                                                              dbItem,
                                                              r'''$.ACCOUNT_NUMBER''',
                                                            ).toString();
                                                          } else if (widget
                                                                  .sidebarSelected ==
                                                              '11') {
                                                            return getJsonField(
                                                              dbItem,
                                                              r'''$.NAME''',
                                                            ).toString();
                                                          } else if (widget
                                                                  .sidebarSelected ==
                                                              '12') {
                                                            return getJsonField(
                                                              dbItem,
                                                              r'''$.NAME''',
                                                            ).toString();
                                                          } else {
                                                            return valueOrDefault<
                                                                String>(
                                                              getJsonField(
                                                                dbItem,
                                                                r'''$.HOST''',
                                                              )?.toString(),
                                                              'FALCON-ASYNC-FINANCIAL',
                                                            );
                                                          }
                                                        }(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Mulish',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                      Text(
                                                        () {
                                                          if (widget
                                                                  .sidebarSelected ==
                                                              '2') {
                                                            return valueOrDefault<
                                                                String>(
                                                              getJsonField(
                                                                dbItem,
                                                                r'''$.URL''',
                                                              )?.toString(),
                                                              'FALCON-ASYNC-FINANCIAL',
                                                            );
                                                          } else if (widget
                                                                  .sidebarSelected ==
                                                              '3') {
                                                            return valueOrDefault<
                                                                String>(
                                                              getJsonField(
                                                                dbItem,
                                                                r'''$.DATA_TYPE''',
                                                              )?.toString(),
                                                              'FALCON-ASYNC-FINANCIAL',
                                                            );
                                                          } else if (widget
                                                                  .sidebarSelected ==
                                                              '4') {
                                                            return getJsonField(
                                                              dbItem,
                                                              r'''$.TXN_TYPE''',
                                                            ).toString();
                                                          } else if (widget
                                                                  .sidebarSelected ==
                                                              '5') {
                                                            return getJsonField(
                                                              dbItem,
                                                              r'''$.COUNTRY_CODE''',
                                                            ).toString();
                                                          } else if (widget
                                                                  .sidebarSelected ==
                                                              '6') {
                                                            return getJsonField(
                                                              dbItem,
                                                              r'''$.TEMPLATE''',
                                                            ).toString();
                                                          } else if (widget
                                                                  .sidebarSelected ==
                                                              '7') {
                                                            return getJsonField(
                                                              dbItem,
                                                              r'''$.CHANNEL_CODE''',
                                                            ).toString();
                                                          } else if (widget
                                                                  .sidebarSelected ==
                                                              '8') {
                                                            return getJsonField(
                                                              dbItem,
                                                              r'''$.TXN_TYPE''',
                                                            ).toString();
                                                          } else if (widget
                                                                  .sidebarSelected ==
                                                              '9') {
                                                            return getJsonField(
                                                              dbItem,
                                                              r'''$.CHANNEL_ID''',
                                                            ).toString();
                                                          } else if (widget
                                                                  .sidebarSelected ==
                                                              '10') {
                                                            return getJsonField(
                                                              dbItem,
                                                              r'''$.MOBILE_NUMBER''',
                                                            ).toString();
                                                          } else if (widget
                                                                  .sidebarSelected ==
                                                              '11') {
                                                            return getJsonField(
                                                              dbItem,
                                                              r'''$.CHANNEL_CODE''',
                                                            ).toString();
                                                          } else if (widget
                                                                  .sidebarSelected ==
                                                              '12') {
                                                            return getJsonField(
                                                              dbItem,
                                                              r'''$.CHANNEL_CODE''',
                                                            ).toString();
                                                          } else {
                                                            return valueOrDefault<
                                                                String>(
                                                              getJsonField(
                                                                dbItem,
                                                                r'''$.HOST''',
                                                              )?.toString(),
                                                              'FALCON-ASYNC-FINANCIAL',
                                                            );
                                                          }
                                                        }(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Mulish',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          if (responsiveVisibility(
                                                            context: context,
                                                            phone: false,
                                                            tablet: false,
                                                            tabletLandscape:
                                                                false,
                                                            desktop: false,
                                                          ))
                                                            Builder(
                                                              builder:
                                                                  (context) =>
                                                                      InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (dialogContext) {
                                                                      return Dialog(
                                                                        elevation:
                                                                            0,
                                                                        insetPadding:
                                                                            EdgeInsets.zero,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        alignment:
                                                                            AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                        child:
                                                                            NewDynamicEditFieldsWidget(
                                                                          dataTableNewModel:
                                                                              DataTableNewModelStruct(),
                                                                          indexEdit:
                                                                              dbIndex,
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
                                                                        fontFamily:
                                                                            'Mulish',
                                                                        letterSpacing:
                                                                            0.0,
                                                                        decoration:
                                                                            TextDecoration.underline,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          Material(
                                                            color: Colors
                                                                .transparent,
                                                            elevation: 0.1,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          24.0),
                                                            ),
                                                            child: Container(
                                                              width: 45.0,
                                                              height: 45.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bgColor4,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            24.0),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Builder(
                                                                  builder:
                                                                      (context) =>
                                                                          InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      if (functions.userTableAccess(
                                                                          '2',
                                                                          FFAppState().userDataAccess.elementAtOrNull(() {
                                                                            if (FFAppState().selectedSidebar ==
                                                                                '2') {
                                                                              return 0;
                                                                            } else if (FFAppState().selectedSidebar ==
                                                                                '3') {
                                                                              return 1;
                                                                            } else if (FFAppState().selectedSidebar ==
                                                                                '4') {
                                                                              return 2;
                                                                            } else if (FFAppState().selectedSidebar ==
                                                                                '5') {
                                                                              return 3;
                                                                            } else if (FFAppState().selectedSidebar ==
                                                                                '6') {
                                                                              return 4;
                                                                            } else if (FFAppState().selectedSidebar ==
                                                                                '7') {
                                                                              return 5;
                                                                            } else if (FFAppState().selectedSidebar ==
                                                                                '8') {
                                                                              return 6;
                                                                            } else if (FFAppState().selectedSidebar ==
                                                                                '9') {
                                                                              return 7;
                                                                            } else if (FFAppState().selectedSidebar ==
                                                                                '10') {
                                                                              return 8;
                                                                            } else if (FFAppState().selectedSidebar ==
                                                                                '11') {
                                                                              return 9;
                                                                            } else if (FFAppState().selectedSidebar ==
                                                                                '12') {
                                                                              return 10;
                                                                            } else {
                                                                              return 0;
                                                                            }
                                                                          }()))!) {
                                                                        await showDialog(
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (dialogContext) {
                                                                            return Dialog(
                                                                              elevation: 0,
                                                                              insetPadding: EdgeInsets.zero,
                                                                              backgroundColor: Colors.transparent,
                                                                              alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                              child: NewDynamicEditFieldsWidget(
                                                                                indexEdit: dbIndex,
                                                                                dataTableNewModel: functions.dynamicDataTableConvertCopy(dbItem),
                                                                              ),
                                                                            );
                                                                          },
                                                                        );
                                                                      } else {
                                                                        await showDialog(
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (dialogContext) {
                                                                            return Dialog(
                                                                              elevation: 0,
                                                                              insetPadding: EdgeInsets.zero,
                                                                              backgroundColor: Colors.transparent,
                                                                              alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                              child: ErrorMessageDialogWidget(
                                                                                errorMessageBody: 'Operation Restricted',
                                                                                titleValue: 'RESTRICTED',
                                                                              ),
                                                                            );
                                                                          },
                                                                        );
                                                                      }
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .edit_square,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Builder(
                                                            builder:
                                                                (context) =>
                                                                    Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          22.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (dialogContext) {
                                                                      return Dialog(
                                                                        elevation:
                                                                            0,
                                                                        insetPadding:
                                                                            EdgeInsets.zero,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        alignment:
                                                                            AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                        child:
                                                                            DeleteDialogWidget(
                                                                          messageBody:
                                                                              'Are you sure you want to Delete?',
                                                                          actionCallback:
                                                                              () async {
                                                                            _model.apiResultwfd =
                                                                                await DeleteOperationApiCall.call(
                                                                              operationType: 'DELETE',
                                                                              tableId: () {
                                                                                if (FFAppState().selectedSidebar == '2') {
                                                                                  return 'UPIHOST';
                                                                                } else if (FFAppState().selectedSidebar == '5') {
                                                                                  return 'UPICOUNTRY';
                                                                                } else if (FFAppState().selectedSidebar == '4') {
                                                                                  return 'UPICOMPLAINT';
                                                                                } else if (FFAppState().selectedSidebar == '5') {
                                                                                  return 'UPICOUNTRY';
                                                                                } else if (FFAppState().selectedSidebar == '6') {
                                                                                  return 'UPISMS';
                                                                                } else if (FFAppState().selectedSidebar == '7') {
                                                                                  return 'UPISOURCESUB';
                                                                                } else if (FFAppState().selectedSidebar == '8') {
                                                                                  return 'UPIFRM';
                                                                                } else if (FFAppState().selectedSidebar == '9') {
                                                                                  return 'UPITRANSACTION';
                                                                                } else if (FFAppState().selectedSidebar == '10') {
                                                                                  return 'UPIBANK';
                                                                                } else if (FFAppState().selectedSidebar == '11') {
                                                                                  return 'UPISOURCECHANNELS';
                                                                                } else if (FFAppState().selectedSidebar == '12') {
                                                                                  return 'UPIINTEROPERABLE';
                                                                                } else {
                                                                                  return 'SYS';
                                                                                }
                                                                              }(),
                                                                              recordId: valueOrDefault<String>(
                                                                                getJsonField(
                                                                                  dbItem,
                                                                                  r'''$.ID''',
                                                                                )?.toString(),
                                                                                'OOP1',
                                                                              ),
                                                                              createdBy: valueOrDefault<String>(
                                                                                FFAppState().userid,
                                                                                'BAN1234567',
                                                                              ),
                                                                              token: FFAppState().token,
                                                                              editedBy: FFAppState().userid,
                                                                              deviceHash: FFAppState().deviceHash,
                                                                            );

                                                                            if ((_model.apiResultwfd?.succeeded ??
                                                                                true)) {
                                                                              FFAppState().token = valueOrDefault<String>(
                                                                                getJsonField(
                                                                                  (_model.apiResultwfd?.jsonBody ?? ''),
                                                                                  r'''$.token''',
                                                                                )?.toString(),
                                                                                'accessToken',
                                                                              );
                                                                              safeSetState(() {});
                                                                              await showDialog(
                                                                                context: context,
                                                                                builder: (dialogContext) {
                                                                                  return Dialog(
                                                                                    elevation: 0,
                                                                                    insetPadding: EdgeInsets.zero,
                                                                                    backgroundColor: Colors.transparent,
                                                                                    alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                    child: ErrorMessageDialogWidget(
                                                                                      errorMessageBody: valueOrDefault<String>(
                                                                                        getJsonField(
                                                                                          (_model.apiResultwfd?.jsonBody ?? ''),
                                                                                          r'''$.message''',
                                                                                        )?.toString(),
                                                                                        '\$.message',
                                                                                      ),
                                                                                      titleValue: 'Alert',
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              );
                                                                            } else {
                                                                              await showDialog(
                                                                                context: context,
                                                                                builder: (dialogContext) {
                                                                                  return Dialog(
                                                                                    elevation: 0,
                                                                                    insetPadding: EdgeInsets.zero,
                                                                                    backgroundColor: Colors.transparent,
                                                                                    alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                    child: ErrorMessageDialogWidget(
                                                                                      errorMessageBody: valueOrDefault<String>(
                                                                                        getJsonField(
                                                                                          (_model.apiResultwfd?.jsonBody ?? ''),
                                                                                          r'''$.message''',
                                                                                        )?.toString(),
                                                                                        '\$.message',
                                                                                      ),
                                                                                      titleValue: 'Alert',
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              );
                                                                            }

                                                                            Navigator.pop(context);
                                                                          },
                                                                        ),
                                                                      );
                                                                    },
                                                                  );

                                                                  if (!functions
                                                                      .userTableAccess(
                                                                          '4',
                                                                          FFAppState()
                                                                              .userDataAccess
                                                                              .elementAtOrNull(() {
                                                                            if (FFAppState().selectedSidebar ==
                                                                                '2') {
                                                                              return 0;
                                                                            } else if (FFAppState().selectedSidebar ==
                                                                                '3') {
                                                                              return 1;
                                                                            } else if (FFAppState().selectedSidebar ==
                                                                                '4') {
                                                                              return 2;
                                                                            } else if (FFAppState().selectedSidebar ==
                                                                                '5') {
                                                                              return 3;
                                                                            } else if (FFAppState().selectedSidebar ==
                                                                                '6') {
                                                                              return 4;
                                                                            } else if (FFAppState().selectedSidebar ==
                                                                                '7') {
                                                                              return 5;
                                                                            } else if (FFAppState().selectedSidebar ==
                                                                                '8') {
                                                                              return 6;
                                                                            } else if (FFAppState().selectedSidebar ==
                                                                                '9') {
                                                                              return 7;
                                                                            } else if (FFAppState().selectedSidebar ==
                                                                                '10') {
                                                                              return 8;
                                                                            } else if (FFAppState().selectedSidebar ==
                                                                                '11') {
                                                                              return 9;
                                                                            } else if (FFAppState().selectedSidebar ==
                                                                                '12') {
                                                                              return 10;
                                                                            } else {
                                                                              return 0;
                                                                            }
                                                                          }()))!) {
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (dialogContext) {
                                                                        return Dialog(
                                                                          elevation:
                                                                              0,
                                                                          insetPadding:
                                                                              EdgeInsets.zero,
                                                                          backgroundColor:
                                                                              Colors.transparent,
                                                                          alignment:
                                                                              AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                          child:
                                                                              ErrorMessageDialogWidget(
                                                                            errorMessageBody:
                                                                                'Operation Restricted',
                                                                            titleValue:
                                                                                'RESTRICTED',
                                                                          ),
                                                                        );
                                                                      },
                                                                    );
                                                                  }

                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                child: Material(
                                                                  color: Colors
                                                                      .transparent,
                                                                  elevation:
                                                                      0.1,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            24.0),
                                                                  ),
                                                                  child:
                                                                      Container(
                                                                    width: 45.0,
                                                                    height:
                                                                        45.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bgColor2,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              24.0),
                                                                    ),
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .delete,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tableText2,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ]
                                                        .map((c) => DataCell(c))
                                                        .toList(),
                                                  ),
                                                  paginated: false,
                                                  selectable: false,
                                                  height: 450.0,
                                                  headingRowHeight: 64.0,
                                                  dataRowHeight: 64.0,
                                                  columnSpacing: 20.0,
                                                  headingRowColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .tableHeaderColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  addHorizontalDivider: true,
                                                  addTopAndBottomDivider: false,
                                                  hideDefaultHorizontalDivider:
                                                      true,
                                                  horizontalDividerColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  horizontalDividerThickness:
                                                      1.0,
                                                  addVerticalDivider: false,
                                                );
                                              },
                                            ),
                                          ),
                                        if (!functions
                                            .jsonEmptyCheck(getJsonField(
                                          (_model.searchAPIs?.jsonBody ?? ''),
                                          r'''$.data''',
                                        ))!)
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 200.0, 0.0, 0.0),
                                              child: Text(
                                                'No Data Available',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              if (responsiveVisibility(
                                context: context,
                                tabletLandscape: false,
                                desktop: false,
                              ))
                                Container(
                                  height: 450.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      wrapWithModel(
                                        model: _model.emptyPageDisplayModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: EmptyPageDisplayWidget(),
                                      ),
                                    ],
                                  ),
                                ),
                            ],
                          );
                        } else {
                          return Container(
                            height: 350.0,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'Please search for the data',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Mulish',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryNavBarFillColor,
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
              if ((_model.totalPages! > 1) &&
                  responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                    tabletLandscape: false,
                  ))
                Align(
                  alignment: AlignmentDirectional(1.0, 0.0),
                  child: Builder(
                    builder: (context) => Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
                      child: Container(
                        width: 450.0,
                        height: 45.0,
                        child: custom_widgets.PaginationWithDots(
                          width: 450.0,
                          height: 45.0,
                          indexFull: _model.totalPages!,
                          listttt: (indexSelected) async {
                            _model.searchApiPaged =
                                await TablesGetApiCallCall.call(
                              tableCode: () {
                                if (widget.sidebarSelected == '2') {
                                  return 'UPIHOST';
                                } else if (widget.sidebarSelected == '3') {
                                  return 'SYS';
                                } else if (widget.sidebarSelected == '4') {
                                  return 'UPICOMPLAINT';
                                } else if (widget.sidebarSelected == '5') {
                                  return 'UPICOUNTRY';
                                } else if (widget.sidebarSelected == '6') {
                                  return 'UPISMS';
                                } else if (widget.sidebarSelected == '7') {
                                  return 'UPISOURCESUB';
                                } else if (widget.sidebarSelected == '8') {
                                  return 'UPIFRM';
                                } else if (widget.sidebarSelected == '9') {
                                  return 'UPITRANSACTION';
                                } else if (widget.sidebarSelected == '10') {
                                  return 'UPIBANK';
                                } else if (widget.sidebarSelected == '11') {
                                  return 'UPISOURCECHANNELS';
                                } else if (widget.sidebarSelected == '12') {
                                  return 'UPIINTEROPERABLE';
                                } else {
                                  return 'UPIHOST';
                                }
                              }(),
                              limit: 5,
                              offset: indexSelected,
                              sortColumn: () {
                                if (widget.sidebarSelected == '2') {
                                  return 'HOST';
                                } else if (widget.sidebarSelected == '3') {
                                  return 'ID';
                                } else if (widget.sidebarSelected == '4') {
                                  return 'ID';
                                } else if (widget.sidebarSelected == '5') {
                                  return 'UPICOUNTRY';
                                } else if (widget.sidebarSelected == '6') {
                                  return 'ID';
                                } else if (widget.sidebarSelected == '7') {
                                  return 'NAME';
                                } else if (widget.sidebarSelected == '8') {
                                  return 'ACCOUNT_NUMBER';
                                } else if (widget.sidebarSelected == '9') {
                                  return 'CHANNEL_CODE';
                                } else if (FFAppState().selectedSidebar ==
                                    '10') {
                                  return 'ACCOUNT_NUMBER';
                                } else if (FFAppState().selectedSidebar ==
                                    '11') {
                                  return 'NAME';
                                } else if (FFAppState().selectedSidebar ==
                                    '12') {
                                  return '12';
                                } else {
                                  return 'HOST';
                                }
                              }(),
                              direction: 'DESC',
                              filtersColumn: () {
                                if (widget.sidebarSelected == '2') {
                                  return 'HOST';
                                } else if (widget.sidebarSelected == '3') {
                                  return 'ID';
                                } else if (widget.sidebarSelected == '4') {
                                  return 'ID';
                                } else if (widget.sidebarSelected == '5') {
                                  return 'COUNTRY_NAME';
                                } else if (widget.sidebarSelected == '6') {
                                  return '';
                                } else if (widget.sidebarSelected == '7') {
                                  return 'NAME';
                                } else if (widget.sidebarSelected == '8') {
                                  return 'ACCOUNT_NUMBER';
                                } else if (widget.sidebarSelected == '9') {
                                  return 'CHANNEL_CODE';
                                } else if (widget.sidebarSelected == '10') {
                                  return 'ACCOUNT_NUMBER';
                                } else if (widget.sidebarSelected == '11') {
                                  return 'NAME';
                                } else if (widget.sidebarSelected == '12') {
                                  return 'NAME';
                                } else {
                                  return 'HOST';
                                }
                              }(),
                              filterValue:
                                  _model.searchCompModel.textController.text,
                              operator: 'LIKE',
                            );

                            if ((_model.searchApiPaged?.succeeded ?? true)) {
                              FFAppState().token = getJsonField(
                                (_model.searchApiPaged?.jsonBody ?? ''),
                                r'''$.token''',
                              ).toString();
                              _model.updatePage(() {});
                              _model.dataTableList = (getJsonField(
                                (_model.searchApiPaged?.jsonBody ?? ''),
                                r'''$.data''',
                                true,
                              )!
                                      .toList()
                                      .map<DataStruct?>(DataStruct.maybeFromMap)
                                      .toList() as Iterable<DataStruct?>)
                                  .withoutNulls
                                  .toList()
                                  .cast<DataStruct>();
                              _model.jsonBodyReqRes = getJsonField(
                                (_model.searchApiPaged?.jsonBody ?? ''),
                                r'''$.data''',
                              );
                              _model.searchedIndex = true;
                              _model.updatePage(() {});
                            } else {
                              await showDialog(
                                context: context,
                                builder: (dialogContext) {
                                  return Dialog(
                                    elevation: 0,
                                    insetPadding: EdgeInsets.zero,
                                    backgroundColor: Colors.transparent,
                                    alignment: AlignmentDirectional(0.0, 0.0)
                                        .resolve(Directionality.of(context)),
                                    child: ErrorMessageDialogWidget(
                                      errorMessageBody: 'Something went wrong',
                                      titleValue: 'Alert',
                                    ),
                                  );
                                },
                              );
                            }

                            _model.updatePage(() {});

                            safeSetState(() {});
                          },
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
