import '/backend/api_requests/api_calls.dart';
import '/components/add_delete_records_list_widget.dart';
import '/components/error_message_dialog_widget.dart';
import '/components/pending_request_view_com_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
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
      if (FFAppState().selectedSidebar == '1') {
        await Future.wait([
          Future(() async {
            _model.isLoading = true;
            safeSetState(() {});
            _model.dropdownSelectedValue = FFAppState().dropdownSelectedValue;
            _model.updatePage(() {});
            _model.pendingRequestApi = await TablesGetApiCallCall.call(
              tableCode: 'UPITEMP',
              limit: 5,
              tempTableName: valueOrDefault<String>(
                () {
                  if (_model.dropdownSelectedValue == 'SYS Config') {
                    return 'SYS';
                  } else if (_model.dropdownSelectedValue ==
                      'UPI Complaint Codes') {
                    return 'UPICOMPLAINT';
                  } else if (_model.dropdownSelectedValue ==
                      'UPI Country Codes') {
                    return 'UPICOUNTRY';
                  } else if (_model.dropdownSelectedValue ==
                      'UPI SMS Templates') {
                    return 'UPISMS';
                  } else if (_model.dropdownSelectedValue ==
                      'UPI Source Sub Channels') {
                    return 'UPISOURCESUB';
                  } else if (_model.dropdownSelectedValue ==
                      'UPI FRM Whitelist Account') {
                    return 'UPIFRM';
                  } else if (_model.dropdownSelectedValue ==
                      'UPI Transaction Limits') {
                    return 'UPITRANSACTION';
                  } else if (_model.dropdownSelectedValue ==
                      'UPI Bank Accounts') {
                    return 'UPIBANK';
                  } else if (_model.dropdownSelectedValue ==
                      'UPI Source Channels') {
                    return 'UPISOURCECHANNELS';
                  } else if (_model.dropdownSelectedValue ==
                      'UPI Interoperable Sub Channels') {
                    return 'UPIINTEROPERABLE';
                  } else {
                    return 'UPIHOST';
                  }
                }(),
                'UPIHOST',
              ),
              direction: 'DESC',
              offset: 0,
              sortColumn: 'ID',
              userId: valueOrDefault<String>(
                FFAppState().userid,
                'BAN234567',
              ),
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
              _model.updatePage(() {});
            } else {
              _model.updatePage(() {});
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

            _model.isLoading = false;
            _model.updatePage(() {});
          }),
          Future(() async {
            _model.loader = true;
            safeSetState(() {});
            _model.apiResultcountt = await PendingRequestCountCall.call(
              userId: valueOrDefault<String>(
                FFAppState().userid,
                'BAN123456',
              ),
            );

            if ((_model.apiResultcountt?.succeeded ?? true)) {
              if (getJsonField(
                    (_model.apiResultcountt?.jsonBody ?? ''),
                    r'''$.totalCount''',
                  ) !=
                  null) {
                FFAppState().countJSon = getJsonField(
                  (_model.apiResultcountt?.jsonBody ?? ''),
                  r'''$.counts''',
                );
                FFAppState().totalpendingcount = getJsonField(
                  (_model.apiResultcountt?.jsonBody ?? ''),
                  r'''$.totalCount''',
                );
                safeSetState(() {});
                _model.loader = false;
                safeSetState(() {});
              } else {
                FFAppState().countJSon = getJsonField(
                  FFAppState().countdefaultjson,
                  r'''$''',
                );
                FFAppState().totalpendingcount = getJsonField(
                  FFAppState().countdefaultjson,
                  r'''$.totalCount''',
                );
                safeSetState(() {});
                _model.loader = false;
                safeSetState(() {});
              }
            } else {
              FFAppState().countJSon = getJsonField(
                FFAppState().countdefaultjson,
                r'''$''',
              );
              safeSetState(() {});
              _model.loader = false;
              safeSetState(() {});
            }
          }),
        ]);
      } else {
        return;
      }
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

    return Builder(
      builder: (context) => Visibility(
        visible: FFAppState().selectedSidebar == '1',
        child: Container(
          height: MediaQuery.sizeOf(context).height * 0.75,
          decoration: BoxDecoration(
            color: Color(0x00FFFFFF),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            18.0, 5.0, 0.0, 15.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            safeSetState(() {});
                          },
                          child: Text(
                            'Pending Requests ${FFAppState().totalpendingcount < 1 ? '' : FFAppState().totalpendingcount.toString()}',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Mulish',
                                  color:
                                      FlutterFlowTheme.of(context).headingColor,
                                  fontSize: 32.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if ((FFAppState().addDeleteBool == false) &&
                          (FFAppState().pendingRequestViewOption == false))
                        Container(
                          height: 600.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                18.0, 12.0, 18.0, 0.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Builder(
                                        builder: (context) {
                                          if (_model.loader == false) {
                                            return Material(
                                              color: Colors.transparent,
                                              elevation: 2.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30.0),
                                              ),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .slideBarTabBG,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Builder(
                                                        builder: (context) =>
                                                            FlutterFlowDropDown<
                                                                String>(
                                                          controller: _model
                                                                  .dropDownValueController ??=
                                                              FormFieldController<
                                                                  String>(
                                                            _model.dropDownValue ??=
                                                                FFAppState()
                                                                    .dropdownSelectedValue,
                                                          ),
                                                          options: List<
                                                                  String>.from(
                                                              _model
                                                                  .dropdownValue),
                                                          optionLabels:
                                                              functions.mergedropdowncount(
                                                                  _model
                                                                      .dropdownValue
                                                                      .toList(),
                                                                  FFAppState()
                                                                      .countJSon),
                                                          onChanged:
                                                              (val) async {
                                                            safeSetState(() =>
                                                                _model.dropDownValue =
                                                                    val);
                                                            FFAppState()
                                                                    .dropdownSelectedValue =
                                                                _model
                                                                    .dropDownValue!;
                                                            _model.updatePage(
                                                                () {});
                                                            _model.dropdownSelectedValue =
                                                                FFAppState()
                                                                    .dropdownSelectedValue;
                                                            _model.updatePage(
                                                                () {});
                                                            _model.ggs =
                                                                await TablesGetApiCallCall
                                                                    .call(
                                                              tableCode:
                                                                  'UPITEMP',
                                                              limit: 5,
                                                              tempTableName:
                                                                  () {
                                                                if (_model
                                                                        .dropdownSelectedValue ==
                                                                    'SYS Config') {
                                                                  return 'SYS';
                                                                } else if (_model
                                                                        .dropdownSelectedValue ==
                                                                    'UPI Complaint Codes') {
                                                                  return 'UPICOMPLAINT';
                                                                } else if (_model
                                                                        .dropdownSelectedValue ==
                                                                    'UPI Country Codes') {
                                                                  return 'UPICOUNTRY';
                                                                } else if (_model
                                                                        .dropdownSelectedValue ==
                                                                    'UPI SMS Templates') {
                                                                  return 'UPISMS';
                                                                } else if (_model
                                                                        .dropdownSelectedValue ==
                                                                    'UPI Source Sub Channels') {
                                                                  return 'UPISOURCESUB';
                                                                } else if (_model
                                                                        .dropdownSelectedValue ==
                                                                    'UPI FRM Whitelist Account') {
                                                                  return 'UPIFRM';
                                                                } else if (_model
                                                                        .dropdownSelectedValue ==
                                                                    'UPI Transaction Limits') {
                                                                  return 'UPITRANSACTION';
                                                                } else if (_model
                                                                        .dropdownSelectedValue ==
                                                                    'UPI Bank Accounts') {
                                                                  return 'UPIBANK';
                                                                } else if (_model
                                                                        .dropdownSelectedValue ==
                                                                    'UPI Source Channels') {
                                                                  return 'UPISOURCECHANNELS';
                                                                } else if (_model
                                                                        .dropdownSelectedValue ==
                                                                    'UPI Interoperable Sub Channels') {
                                                                  return 'UPIINTEROPERABLE';
                                                                } else {
                                                                  return 'UPIHOST';
                                                                }
                                                              }(),
                                                              direction: 'DESC',
                                                              offset: 0,
                                                              sortColumn: 'ID',
                                                              userId:
                                                                  valueOrDefault<
                                                                      String>(
                                                                FFAppState()
                                                                    .userid,
                                                                'BAN123456',
                                                              ),
                                                            );

                                                            if ((_model.ggs
                                                                    ?.succeeded ??
                                                                true)) {
                                                              _model.jsonPendingReqRes =
                                                                  getJsonField(
                                                                (_model.ggs
                                                                        ?.jsonBody ??
                                                                    ''),
                                                                r'''$.data''',
                                                              );
                                                              _model.totalPages =
                                                                  getJsonField(
                                                                (_model.ggs
                                                                        ?.jsonBody ??
                                                                    ''),
                                                                r'''$.pageCount''',
                                                              );
                                                              _model.updatePage(
                                                                  () {});
                                                              FFAppState()
                                                                      .token =
                                                                  getJsonField(
                                                                (_model.ggs
                                                                        ?.jsonBody ??
                                                                    ''),
                                                                r'''$.token''',
                                                              ).toString();
                                                              safeSetState(
                                                                  () {});
                                                            } else {
                                                              await showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (dialogContext) {
                                                                  return Dialog(
                                                                    elevation:
                                                                        0,
                                                                    insetPadding:
                                                                        EdgeInsets
                                                                            .zero,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .transparent,
                                                                    alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0)
                                                                        .resolve(
                                                                            Directionality.of(context)),
                                                                    child:
                                                                        ErrorMessageDialogWidget(
                                                                      errorMessageBody:
                                                                          'Something went wrong',
                                                                      titleValue:
                                                                          'Alert',
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            }

                                                            safeSetState(() {});
                                                          },
                                                          width: 265.0,
                                                          height: 40.0,
                                                          textStyle:
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
                                                          hintText: 'Select...',
                                                          icon: Icon(
                                                            Icons
                                                                .keyboard_arrow_down_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 24.0,
                                                          ),
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          elevation: 2.0,
                                                          borderColor: Colors
                                                              .transparent,
                                                          borderWidth: 0.0,
                                                          borderRadius: 30.0,
                                                          margin:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      0.0,
                                                                      12.0,
                                                                      0.0),
                                                          hidesUnderline: true,
                                                          isOverButton: false,
                                                          isSearchable: false,
                                                          isMultiSelect: false,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          } else {
                                            return Lottie.asset(
                                              'assets/jsons/Animation_-_1745476683296.json',
                                              width: 80.0,
                                              height: 100.0,
                                              fit: BoxFit.contain,
                                              animate: true,
                                            );
                                          }
                                        },
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 400.0,
                                    decoration: BoxDecoration(),
                                    child: Stack(
                                      children: [
                                        if (functions.jsonEmptyCheck(
                                                _model.jsonPendingReqRes) ??
                                            true)
                                          Builder(
                                            builder: (context) {
                                              final pdRequestTable = _model
                                                      .jsonPendingReqRes
                                                      ?.toList() ??
                                                  [];

                                              return FlutterFlowDataTable<
                                                  dynamic>(
                                                controller: _model
                                                    .paginatedDataTableController,
                                                data: pdRequestTable,
                                                columnsBuilder:
                                                    (onSortChanged) => [
                                                  DataColumn2(
                                                    label:
                                                        DefaultTextStyle.merge(
                                                      softWrap: true,
                                                      child: Text(
                                                        '',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Mulish',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                    ),
                                                    fixedWidth:
                                                        MediaQuery.sizeOf(
                                                                    context)
                                                                .width *
                                                            0.0,
                                                  ),
                                                  DataColumn2(
                                                    label:
                                                        DefaultTextStyle.merge(
                                                      softWrap: true,
                                                      child: Text(
                                                        'ID',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Mulish',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                    ),
                                                    fixedWidth:
                                                        MediaQuery.sizeOf(
                                                                    context)
                                                                .width *
                                                            0.08,
                                                  ),
                                                  DataColumn2(
                                                    label:
                                                        DefaultTextStyle.merge(
                                                      softWrap: true,
                                                      child: Text(
                                                        () {
                                                          if (_model
                                                                  .dropdownSelectedValue ==
                                                              'SYS Config') {
                                                            return 'VALUE';
                                                          } else if (_model
                                                                  .dropdownSelectedValue ==
                                                              'UPI Complaint Codes') {
                                                            return 'REASON_CODE';
                                                          } else if (_model
                                                                  .dropdownSelectedValue ==
                                                              'UPI Country Codes') {
                                                            return 'COUNTRY_NAME';
                                                          } else if (_model
                                                                  .dropdownSelectedValue ==
                                                              'UPI Source Sub Channels') {
                                                            return 'NAME';
                                                          } else if (_model
                                                                  .dropdownSelectedValue ==
                                                              'UPI SMS Templates') {
                                                            return 'NAME';
                                                          } else if (_model
                                                                  .dropdownSelectedValue ==
                                                              'UPI FRM Whitelist Account') {
                                                            return 'ACCOUNT_NUMBER';
                                                          } else if (_model
                                                                  .dropdownSelectedValue ==
                                                              'UPI Transaction Limits') {
                                                            return 'CHANNEL_CODE';
                                                          } else if (_model
                                                                  .dropdownSelectedValue ==
                                                              'UPI Bank Accounts') {
                                                            return 'ACCOUNT_NUMBER';
                                                          } else if (_model
                                                                  .dropdownSelectedValue ==
                                                              'UPI Source Channels') {
                                                            return 'NAME';
                                                          } else if (_model
                                                                  .dropdownSelectedValue ==
                                                              'UPI Interoperable Sub Channels') {
                                                            return 'NAME';
                                                          } else {
                                                            return 'HOST';
                                                          }
                                                        }(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Mulish',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      14.0,
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
                                                    label:
                                                        DefaultTextStyle.merge(
                                                      softWrap: true,
                                                      child: Text(
                                                        () {
                                                          if (_model
                                                                  .dropdownSelectedValue ==
                                                              'SYS Config') {
                                                            return 'DATA_TYPE';
                                                          } else if (_model
                                                                  .dropdownSelectedValue ==
                                                              'UPI Complaint Codes') {
                                                            return 'TXN_TYPE';
                                                          } else if (_model
                                                                  .dropdownSelectedValue ==
                                                              'UPI Country Codes') {
                                                            return 'COUNTRY_CODE';
                                                          } else if (_model
                                                                  .dropdownSelectedValue ==
                                                              'UPI SMS Templates') {
                                                            return 'TEMPLATE';
                                                          } else if (_model
                                                                  .dropdownSelectedValue ==
                                                              'UPI Source Sub Channels') {
                                                            return 'CHANNEL_CODE';
                                                          } else if (_model
                                                                  .dropdownSelectedValue ==
                                                              'UPI FRM Whitelist Account') {
                                                            return 'TXN_TYPE';
                                                          } else if (_model
                                                                  .dropdownSelectedValue ==
                                                              'UPI Transaction Limits') {
                                                            return 'CHANNEL_ID';
                                                          } else if (_model
                                                                  .dropdownSelectedValue ==
                                                              'UPI Bank Accounts') {
                                                            return 'MOBILE_NUMBER';
                                                          } else if (_model
                                                                  .dropdownSelectedValue ==
                                                              'UPI Source Channels') {
                                                            return 'CHANNEL_CODE';
                                                          } else if (_model
                                                                  .dropdownSelectedValue ==
                                                              'UPI Interoperable Sub Channels') {
                                                            return 'CHANNEL_CODE';
                                                          } else {
                                                            return 'URL';
                                                          }
                                                        }(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Mulish',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      14.0,
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
                                                    label:
                                                        DefaultTextStyle.merge(
                                                      softWrap: true,
                                                      child: Text(
                                                        'OPERATIONS',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Mulish',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                    ),
                                                    fixedWidth:
                                                        MediaQuery.sizeOf(
                                                                    context)
                                                                .width *
                                                            0.1,
                                                  ),
                                                  DataColumn2(
                                                    label:
                                                        DefaultTextStyle.merge(
                                                      softWrap: true,
                                                      child: Text(
                                                        'CREATED_BY',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Mulish',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                    ),
                                                    fixedWidth:
                                                        MediaQuery.sizeOf(
                                                                    context)
                                                                .width *
                                                            0.1,
                                                  ),
                                                  DataColumn2(
                                                    label:
                                                        DefaultTextStyle.merge(
                                                      softWrap: true,
                                                      child: Text(
                                                        'ACTIONS',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Mulish',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      14.0,
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
                                                dataRowBuilder:
                                                    (pdRequestTableItem,
                                                            pdRequestTableIndex,
                                                            selected,
                                                            onSelectChanged) =>
                                                        DataRow(
                                                  color:
                                                      WidgetStateProperty.all(
                                                    pdRequestTableIndex % 2 == 0
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .tableRowColor
                                                        : Colors.white,
                                                  ),
                                                  cells: [
                                                    Text(
                                                      '',
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
                                                      functions
                                                          .extractIdHostUrl(
                                                              getJsonField(
                                                                pdRequestTableItem,
                                                                r'''$.RAW_JSON''',
                                                              ).toString(),
                                                              'ID'),
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
                                                      functions
                                                          .extractIdHostUrl(
                                                              getJsonField(
                                                                pdRequestTableItem,
                                                                r'''$.RAW_JSON''',
                                                              ).toString(), () {
                                                        if (_model
                                                                .dropdownSelectedValue ==
                                                            'SYS') {
                                                          return 'VALUE';
                                                        } else if (_model
                                                                .dropdownSelectedValue ==
                                                            'UPI Complaint') {
                                                          return 'REASON_CODE';
                                                        } else if (_model
                                                                .dropdownSelectedValue ==
                                                            'UPI Country') {
                                                          return 'COUNTRY_NAME';
                                                        } else if (_model
                                                                .dropdownSelectedValue ==
                                                            'UPI SMS') {
                                                          return 'NAME';
                                                        } else if (_model
                                                                .dropdownSelectedValue ==
                                                            'UPI Source Sub') {
                                                          return 'NAME';
                                                        } else if (_model
                                                                .dropdownSelectedValue ==
                                                            'UPI FRM') {
                                                          return 'ACCOUNT_NUMBER';
                                                        } else if (_model
                                                                .dropdownSelectedValue ==
                                                            'UPI Transaction') {
                                                          return 'CHANNEL_CODE';
                                                        } else if (_model
                                                                .dropdownSelectedValue ==
                                                            'UPI Bank') {
                                                          return 'ACCOUNT_NUMBER';
                                                        } else if (_model
                                                                .dropdownSelectedValue ==
                                                            'UPI Source') {
                                                          return 'NAME';
                                                        } else if (_model
                                                                .dropdownSelectedValue ==
                                                            'UPI Interoperable') {
                                                          return 'NAME';
                                                        } else {
                                                          return 'HOST';
                                                        }
                                                      }()),
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
                                                      functions
                                                          .extractIdHostUrl(
                                                              getJsonField(
                                                                pdRequestTableItem,
                                                                r'''$.RAW_JSON''',
                                                              ).toString(), () {
                                                        if (_model
                                                                .dropdownSelectedValue ==
                                                            'SYS') {
                                                          return 'DATA_TYPE';
                                                        } else if (_model
                                                                .dropdownSelectedValue ==
                                                            'UPI Complaint') {
                                                          return 'TXN_TYPE';
                                                        } else if (_model
                                                                .dropdownSelectedValue ==
                                                            'UPI Country') {
                                                          return 'COUNTRY_CODE';
                                                        } else if (_model
                                                                .dropdownSelectedValue ==
                                                            'UPI SMS') {
                                                          return 'TEMPLATE';
                                                        } else if (_model
                                                                .dropdownSelectedValue ==
                                                            'UPI Source Sub') {
                                                          return 'CHANNEL_CODE';
                                                        } else if (_model
                                                                .dropdownSelectedValue ==
                                                            'UPI FRM') {
                                                          return 'TXN_TYPE';
                                                        } else if (_model
                                                                .dropdownSelectedValue ==
                                                            'UPI Transaction') {
                                                          return 'CHANNEL_ID';
                                                        } else if (_model
                                                                .dropdownSelectedValue ==
                                                            'UPI Bank') {
                                                          return 'MOBILE_NUMBER';
                                                        } else if (_model
                                                                .dropdownSelectedValue ==
                                                            'UPI Source') {
                                                          return 'CHANNEL_CODE';
                                                        } else if (_model
                                                                .dropdownSelectedValue ==
                                                            'UPI Interoperable') {
                                                          return 'CHANNEL_CODE';
                                                        } else {
                                                          return 'URL';
                                                        }
                                                      }()),
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
                                                      children: [
                                                        Text(
                                                          getJsonField(
                                                            pdRequestTableItem,
                                                            r'''$.ACTION_TYPE''',
                                                          ).toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
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
                                                      ].divide(SizedBox(
                                                          width: 12.0)),
                                                    ),
                                                    Text(
                                                      getJsonField(
                                                        pdRequestTableItem,
                                                        r'''$.CREATED_BY''',
                                                      ).toString(),
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
                                                      children: [
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                          tablet: false,
                                                          tabletLandscape:
                                                              false,
                                                          desktop: false,
                                                        ))
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
                                                            onTap: () async {
                                                              _model.apiResultem33 =
                                                                  await PendingRequestApproveCall
                                                                      .call(
                                                                action:
                                                                    'APPROVE',
                                                                tableId:
                                                                    getJsonField(
                                                                  pdRequestTableItem,
                                                                  r'''$.TABLE_ID''',
                                                                ).toString(),
                                                                recordId:
                                                                    getJsonField(
                                                                  pdRequestTableItem,
                                                                  r'''$.RECORD_ID''',
                                                                ).toString(),
                                                                userId:
                                                                    FFAppState()
                                                                        .userid,
                                                              );

                                                              if ((_model
                                                                      .apiResultem33
                                                                      ?.succeeded ??
                                                                  true)) {
                                                                await showDialog(
                                                                  context:
                                                                      context,
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
                                                                              Navigator.pop(alertDialogContext),
                                                                          child:
                                                                              Text('Ok'),
                                                                        ),
                                                                      ],
                                                                    );
                                                                  },
                                                                );
                                                                FFAppState()
                                                                        .pendingRequestViewOption =
                                                                    false;
                                                                FFAppState()
                                                                    .update(
                                                                        () {});
                                                              }

                                                              context.pushNamed(
                                                                  DashboardScreenWidget
                                                                      .routeName);

                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            child: Container(
                                                              width: 80.0,
                                                              height: 30.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bgColor1,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20.0),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  'Approve',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Mulish',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tableText1,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                          tablet: false,
                                                          tabletLandscape:
                                                              false,
                                                          desktop: false,
                                                        ))
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
                                                            onTap: () async {
                                                              _model.apiResultem33Copy =
                                                                  await PendingRequestApproveCall
                                                                      .call(
                                                                action:
                                                                    'REJECT',
                                                                tableId:
                                                                    getJsonField(
                                                                  pdRequestTableItem,
                                                                  r'''$.TABLE_ID''',
                                                                ).toString(),
                                                                recordId:
                                                                    getJsonField(
                                                                  pdRequestTableItem,
                                                                  r'''$.RECORD_ID''',
                                                                ).toString(),
                                                                userId:
                                                                    FFAppState()
                                                                        .userid,
                                                                token:
                                                                    FFAppState()
                                                                        .token,
                                                                deviceHash:
                                                                    'deviceHash',
                                                              );

                                                              if ((_model
                                                                      .apiResultem33Copy
                                                                      ?.succeeded ??
                                                                  true)) {
                                                                await showDialog(
                                                                  context:
                                                                      context,
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
                                                                              Navigator.pop(alertDialogContext),
                                                                          child:
                                                                              Text('Ok'),
                                                                        ),
                                                                      ],
                                                                    );
                                                                  },
                                                                );
                                                                FFAppState()
                                                                        .pendingRequestViewOption =
                                                                    false;
                                                                safeSetState(
                                                                    () {});
                                                              }

                                                              context.pushNamed(
                                                                  DashboardScreenWidget
                                                                      .routeName);

                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            child: Container(
                                                              width: 66.0,
                                                              height: 30.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFFFBE7E9),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20.0),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  'Reject',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Mulish',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tableText2,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        Builder(
                                                          builder: (context) =>
                                                              FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              _model.apiResultbq6 =
                                                                  await PendingRequestApproveCall
                                                                      .call(
                                                                action:
                                                                    'APPROVE',
                                                                userId:
                                                                    FFAppState()
                                                                        .userid,
                                                                tableId:
                                                                    getJsonField(
                                                                  pdRequestTableItem,
                                                                  r'''$.TABLE_ID''',
                                                                ).toString(),
                                                                recordId:
                                                                    getJsonField(
                                                                  pdRequestTableItem,
                                                                  r'''$.RECORD_ID''',
                                                                ).toString(),
                                                              );

                                                              if ((_model
                                                                      .apiResultbq6
                                                                      ?.succeeded ??
                                                                  true)) {
                                                                await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (dialogContext) {
                                                                    return Dialog(
                                                                      elevation:
                                                                          0,
                                                                      insetPadding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0)
                                                                          .resolve(
                                                                              Directionality.of(context)),
                                                                      child:
                                                                          ErrorMessageDialogWidget(
                                                                        errorMessageBody:
                                                                            'Successfully Approved',
                                                                        titleValue:
                                                                            'Alert',
                                                                      ),
                                                                    );
                                                                  },
                                                                );

                                                                FFAppState()
                                                                        .pendingRequestViewOption =
                                                                    false;
                                                                FFAppState()
                                                                    .update(
                                                                        () {});
                                                              } else {
                                                                await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (dialogContext) {
                                                                    return Dialog(
                                                                      elevation:
                                                                          0,
                                                                      insetPadding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0)
                                                                          .resolve(
                                                                              Directionality.of(context)),
                                                                      child:
                                                                          ErrorMessageDialogWidget(
                                                                        errorMessageBody:
                                                                            'Something went wrong',
                                                                        titleValue:
                                                                            'Alert',
                                                                      ),
                                                                    );
                                                                  },
                                                                );
                                                              }

                                                              context.goNamed(
                                                                  DashboardScreenWidget
                                                                      .routeName);

                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            text: 'Approve',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 80.0,
                                                              height: 30.0,
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bgColor1,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Mulish',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tableText1,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                              elevation: 0.1,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          22.0),
                                                            ),
                                                          ),
                                                        ),
                                                        Builder(
                                                          builder: (context) =>
                                                              FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              _model.apiResultem33CopyCopyr =
                                                                  await PendingRequestApproveCall
                                                                      .call(
                                                                action:
                                                                    'REJECT',
                                                                tableId:
                                                                    getJsonField(
                                                                  pdRequestTableItem,
                                                                  r'''$.TABLE_ID''',
                                                                ).toString(),
                                                                recordId:
                                                                    getJsonField(
                                                                  pdRequestTableItem,
                                                                  r'''$.RECORD_ID''',
                                                                ).toString(),
                                                                userId:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  FFAppState()
                                                                      .userid,
                                                                  'BAN12345',
                                                                ),
                                                                token:
                                                                    FFAppState()
                                                                        .token,
                                                                deviceHash:
                                                                    'deviceHash',
                                                              );

                                                              if ((_model
                                                                      .apiResultem33CopyCopyr
                                                                      ?.succeeded ??
                                                                  true)) {
                                                                await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (dialogContext) {
                                                                    return Dialog(
                                                                      elevation:
                                                                          0,
                                                                      insetPadding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0)
                                                                          .resolve(
                                                                              Directionality.of(context)),
                                                                      child:
                                                                          ErrorMessageDialogWidget(
                                                                        errorMessageBody:
                                                                            'Successfully Rejected',
                                                                        titleValue:
                                                                            'Alert',
                                                                      ),
                                                                    );
                                                                  },
                                                                );

                                                                FFAppState()
                                                                        .pendingRequestViewOption =
                                                                    false;
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (dialogContext) {
                                                                    return Dialog(
                                                                      elevation:
                                                                          0,
                                                                      insetPadding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0)
                                                                          .resolve(
                                                                              Directionality.of(context)),
                                                                      child:
                                                                          ErrorMessageDialogWidget(
                                                                        errorMessageBody:
                                                                            'Something went wrong',
                                                                        titleValue:
                                                                            'Alert',
                                                                      ),
                                                                    );
                                                                  },
                                                                );
                                                              }

                                                              context.pushNamed(
                                                                  DashboardScreenWidget
                                                                      .routeName);

                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            text: 'Reject',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 80.0,
                                                              height: 30.0,
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bgColor2,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Mulish',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tableText2,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                      ),
                                                              elevation: 0.1,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          24.0),
                                                            ),
                                                          ),
                                                        ),
                                                        Builder(
                                                          builder: (context) =>
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
                                                            onTap: () async {
                                                              var _shouldSetState =
                                                                  false;
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
                                                              safeSetState(
                                                                  () {});
                                                              if (_model
                                                                      .operation ==
                                                                  'UPDATE') {
                                                                FFAppState()
                                                                        .editJson =
                                                                    functions
                                                                        .rawjsonTojson(
                                                                            pdRequestTableItem);
                                                                safeSetState(
                                                                    () {});
                                                                _model.searchID =
                                                                    functions.extractIdHostUrl(
                                                                        getJsonField(
                                                                          pdRequestTableItem,
                                                                          r'''$.RAW_JSON''',
                                                                        ).toString(),
                                                                        'ID');
                                                                safeSetState(
                                                                    () {});
                                                                _model.upiresult =
                                                                    await TablesGetApiCallCall
                                                                        .call(
                                                                  tableCode:
                                                                      () {
                                                                    if (_model
                                                                            .dropdownSelectedValue ==
                                                                        'UPI Host') {
                                                                      return 'UPIHOST';
                                                                    } else if (_model
                                                                            .dropdownSelectedValue ==
                                                                        'SYS') {
                                                                      return 'SYS';
                                                                    } else if (_model
                                                                            .dropdownSelectedValue ==
                                                                        'UPI Complaint') {
                                                                      return 'UPICOMPLAINT';
                                                                    } else if (_model
                                                                            .dropdownSelectedValue ==
                                                                        'UPI Country') {
                                                                      return 'UPICOUNTRY';
                                                                    } else if (_model
                                                                            .dropdownSelectedValue ==
                                                                        'UPI SMS') {
                                                                      return 'UPISMS';
                                                                    } else if (_model
                                                                            .dropdownSelectedValue ==
                                                                        'UPI Source Sub') {
                                                                      return 'UPISOURCESUB';
                                                                    } else if (_model
                                                                            .dropdownSelectedValue ==
                                                                        'UPI FRM') {
                                                                      return 'UPIFRM';
                                                                    } else if (_model
                                                                            .dropdownSelectedValue ==
                                                                        'UPI Transaction') {
                                                                      return 'UPITRANSACTION';
                                                                    } else if (_model
                                                                            .dropdownSelectedValue ==
                                                                        'UPI Bank') {
                                                                      return 'UPIBANK';
                                                                    } else if (_model
                                                                            .dropdownSelectedValue ==
                                                                        'UPI Source') {
                                                                      return 'UPISOURCECHANNELS';
                                                                    } else if (_model
                                                                            .dropdownSelectedValue ==
                                                                        'UPI Interoperable') {
                                                                      return 'UPIINTEROPERABLE';
                                                                    } else {
                                                                      return 'UPIHOST';
                                                                    }
                                                                  }(),
                                                                  limit: 5,
                                                                  offset: 0,
                                                                  sortColumn:
                                                                      'ID',
                                                                  direction:
                                                                      'ASC',
                                                                  filtersColumn:
                                                                      'ID',
                                                                  filterValue:
                                                                      _model
                                                                          .searchID,
                                                                  operator: '=',
                                                                );

                                                                _shouldSetState =
                                                                    true;
                                                                if ((_model
                                                                        .upiresult
                                                                        ?.succeeded ??
                                                                    true)) {
                                                                  FFAppState()
                                                                          .djson =
                                                                      getJsonField(
                                                                    (_model.upiresult
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                    r'''$.data[0]''',
                                                                  );
                                                                  safeSetState(
                                                                      () {});
                                                                  FFAppState()
                                                                      .headerJsonForView = (_model
                                                                          .upiresult
                                                                          ?.jsonBody ??
                                                                      '');
                                                                  safeSetState(
                                                                      () {});
                                                                  FFAppState()
                                                                          .pendingRequestViewOption =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                } else {
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
                                                                              'Failed',
                                                                          titleValue:
                                                                              'Alert',
                                                                        ),
                                                                      );
                                                                    },
                                                                  );
                                                                }
                                                              } else {
                                                                FFAppState()
                                                                        .editJson =
                                                                    functions
                                                                        .rawjsonTojson(
                                                                            pdRequestTableItem);
                                                                safeSetState(
                                                                    () {});
                                                                _model.searchID =
                                                                    functions.extractIdHostUrl(
                                                                        getJsonField(
                                                                          pdRequestTableItem,
                                                                          r'''$.RAW_JSON''',
                                                                        ).toString(),
                                                                        'ID');
                                                                safeSetState(
                                                                    () {});
                                                                _model.upiresultt =
                                                                    await TablesGetApiCallCall
                                                                        .call(
                                                                  tableCode:
                                                                      () {
                                                                    if (_model
                                                                            .dropdownSelectedValue ==
                                                                        'UPI Host') {
                                                                      return 'UPIHOST';
                                                                    } else if (_model
                                                                            .dropdownSelectedValue ==
                                                                        'SYS') {
                                                                      return 'SYS';
                                                                    } else if (_model
                                                                            .dropdownSelectedValue ==
                                                                        'UPI Complaint') {
                                                                      return 'UPICOMPLAINT';
                                                                    } else if (_model
                                                                            .dropdownSelectedValue ==
                                                                        'UPI Country') {
                                                                      return 'UPICOUNTRY';
                                                                    } else if (_model
                                                                            .dropdownSelectedValue ==
                                                                        'UPI SMS') {
                                                                      return 'UPISMS';
                                                                    } else if (_model
                                                                            .dropdownSelectedValue ==
                                                                        'UPI Source Sub') {
                                                                      return 'UPISOURCESUB';
                                                                    } else if (_model
                                                                            .dropdownSelectedValue ==
                                                                        'UPI FRM') {
                                                                      return 'UPIFRM';
                                                                    } else if (_model
                                                                            .dropdownSelectedValue ==
                                                                        'UPI Transaction') {
                                                                      return 'UPITRANSACTION';
                                                                    } else if (_model
                                                                            .dropdownSelectedValue ==
                                                                        'UPI Bank') {
                                                                      return 'UPIBANK';
                                                                    } else if (_model
                                                                            .dropdownSelectedValue ==
                                                                        'UPI Source') {
                                                                      return 'UPISOURCECHANNELS';
                                                                    } else if (_model
                                                                            .dropdownSelectedValue ==
                                                                        'UPI Interoperable') {
                                                                      return 'UPIINTEROPERABLE';
                                                                    } else {
                                                                      return 'UPIHOST';
                                                                    }
                                                                  }(),
                                                                  limit: 5,
                                                                  offset: 0,
                                                                  sortColumn:
                                                                      'ID',
                                                                  direction:
                                                                      'ASC',
                                                                  filtersColumn:
                                                                      'ID',
                                                                  filterValue:
                                                                      _model
                                                                          .searchID,
                                                                  operator: '=',
                                                                );

                                                                _shouldSetState =
                                                                    true;
                                                                if ((_model
                                                                        .upiresultt
                                                                        ?.succeeded ??
                                                                    true)) {
                                                                  FFAppState()
                                                                          .djson =
                                                                      getJsonField(
                                                                    (_model.upiresultt
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                    r'''$.data[0]''',
                                                                  );
                                                                  FFAppState()
                                                                      .headerJsonForView = (_model
                                                                          .upiresultt
                                                                          ?.jsonBody ??
                                                                      '');
                                                                  FFAppState()
                                                                          .addDeleteBool =
                                                                      true;
                                                                  FFAppState()
                                                                          .editJson =
                                                                      functions
                                                                          .rawjsonTojson(
                                                                              pdRequestTableItem);
                                                                  safeSetState(
                                                                      () {});
                                                                } else {
                                                                  if (_shouldSetState)
                                                                    safeSetState(
                                                                        () {});
                                                                  return;
                                                                }

                                                                if (_shouldSetState)
                                                                  safeSetState(
                                                                      () {});
                                                                return;
                                                              }

                                                              if (_shouldSetState)
                                                                safeSetState(
                                                                    () {});
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .remove_red_eye_outlined,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          width: 12.0)),
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
                                                hideDefaultHorizontalDivider:
                                                    true,
                                                horizontalDividerColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                horizontalDividerThickness: 1.0,
                                                addVerticalDivider: false,
                                              );
                                            },
                                          ),
                                        if (!functions.jsonEmptyCheck(
                                            _model.jsonPendingReqRes)!)
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -0.1, -0.14),
                                            child: Text(
                                              'No Data Available',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Mulish',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryNavBarFillColor,
                                                    fontSize: 20.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                  if (_model.totalPages! > 1)
                                    Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: Builder(
                                        builder: (context) => Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 10.0, 20.0),
                                          child: Container(
                                            width: 450.0,
                                            height: 45.0,
                                            child: custom_widgets
                                                .PaginationWithDots(
                                              width: 450.0,
                                              height: 45.0,
                                              indexFull: _model.totalPages!,
                                              listttt: (indexSelected) async {
                                                _model.apicount =
                                                    _model.apicount + 1;
                                                safeSetState(() {});
                                                _model.pendingRequestApiiiii =
                                                    await TablesGetApiCallCall
                                                        .call(
                                                  tableCode: 'UPITEMP',
                                                  limit: 5,
                                                  tempTableName: () {
                                                    if (_model
                                                            .dropdownSelectedValue ==
                                                        'SYS Config') {
                                                      return 'SYS';
                                                    } else if (_model
                                                            .dropdownSelectedValue ==
                                                        'UPI Complaint Codes') {
                                                      return 'UPICOMPLAINT';
                                                    } else if (_model
                                                            .dropdownSelectedValue ==
                                                        'UPI Country Codes') {
                                                      return 'UPICOUNTRY';
                                                    } else if (_model
                                                            .dropdownSelectedValue ==
                                                        'UPI SMS Templates') {
                                                      return 'UPISMS';
                                                    } else if (_model
                                                            .dropdownSelectedValue ==
                                                        'UPI Source Sub Channels') {
                                                      return 'UPISOURCESUB';
                                                    } else if (_model
                                                            .dropdownSelectedValue ==
                                                        'UPI FRM Whitelist Account') {
                                                      return 'UPIFRM';
                                                    } else if (_model
                                                            .dropdownSelectedValue ==
                                                        'UPI Transaction Limits') {
                                                      return 'UPITRANSACTION';
                                                    } else if (_model
                                                            .dropdownSelectedValue ==
                                                        'UPI Bank Accounts') {
                                                      return 'UPIBANK';
                                                    } else if (_model
                                                            .dropdownSelectedValue ==
                                                        'UPI Source Channels') {
                                                      return 'UPISOURCECHANNELS';
                                                    } else if (_model
                                                            .dropdownSelectedValue ==
                                                        'UPI Interoperable Sub Channels') {
                                                      return 'UPIINTEROPERABLE';
                                                    } else {
                                                      return 'UPIHOST';
                                                    }
                                                  }(),
                                                  direction: 'DESC',
                                                  offset: indexSelected,
                                                  sortColumn: 'ID',
                                                  userId:
                                                      valueOrDefault<String>(
                                                    FFAppState().userid,
                                                    'BAN123456',
                                                  ),
                                                );

                                                if ((_model
                                                        .pendingRequestApiiiii
                                                        ?.succeeded ??
                                                    true)) {
                                                  _model.jsonPendingReqRes =
                                                      getJsonField(
                                                    (_model.pendingRequestApiiiii
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.data''',
                                                  );
                                                  _model.updatePage(() {});
                                                } else {
                                                  _model.updatePage(() {});
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
                                                            ErrorMessageDialogWidget(
                                                          errorMessageBody:
                                                              'Something went wrong',
                                                          titleValue: 'Alert',
                                                        ),
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
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      if (FFAppState().addDeleteBool == true)
                        Container(
                          height: 600.0,
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
                      if (FFAppState().pendingRequestViewOption == true)
                        Container(
                          height: 600.0,
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
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
