import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/alert_successfull_dialog_widget.dart';
import '/components/editable_field_widget.dart';
import '/components/error_message_dialog_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'add_host_fields_model.dart';
export 'add_host_fields_model.dart';

class AddHostFieldsWidget extends StatefulWidget {
  const AddHostFieldsWidget({
    super.key,
    this.dataTableNewModel,
  });

  final DataTableNewModelStruct? dataTableNewModel;

  @override
  State<AddHostFieldsWidget> createState() => _AddHostFieldsWidgetState();
}

class _AddHostFieldsWidgetState extends State<AddHostFieldsWidget> {
  late AddHostFieldsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddHostFieldsModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(
        Duration(
          milliseconds: 100,
        ),
      );
      _model.editableHeaders = widget.dataTableNewModel;
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
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          width: 1195.0,
          height: 700.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(18.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 30.0, 20.0, 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Add The Fields',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Mulish',
                                color:
                                    FlutterFlowTheme.of(context).headingColor,
                                fontSize: 25.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFB4B7),
                            shape: BoxShape.circle,
                          ),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              FFAppState().addjsonconfig = null;
                              safeSetState(() {});
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.close,
                              color: FlutterFlowTheme.of(context).tableText2,
                              size: 30.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(30.0, 20.0, 30.0, 0.0),
                  child: Builder(
                    builder: (context) {
                      final gview =
                          _model.editableHeaders?.headers.toList() ?? [];

                      return GridView.builder(
                        padding: EdgeInsets.zero,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 5.0,
                          childAspectRatio: 4.0,
                        ),
                        scrollDirection: Axis.vertical,
                        itemCount: gview.length,
                        itemBuilder: (context, gviewIndex) {
                          final gviewItem = gview[gviewIndex];
                          return EditableFieldWidget(
                            key: Key('Key2bn_${gviewIndex}_of_${gview.length}'),
                            heading: _model.editableHeaders?.headers
                                .elementAtOrNull(gviewIndex),
                            data: '',
                            showTooltip: true,
                            onChange: (data) async {
                              unawaited(
                                () async {
                                  await actions.addlistData(
                                    gviewIndex,
                                    data,
                                    _model.editableHeaders!.headers.toList(),
                                  );
                                }(),
                              );
                            },
                            passDataItem: (fieldName) async {
                              _model.editedValues = fieldName
                                  .toList()
                                  .cast<DataTableNewModelStruct>();
                              safeSetState(() {});
                            },
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
              Builder(
                builder: (context) => Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 20.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      _model.addfieldsapires = await HostOpeartionsCall.call(
                        dataJson: FFAppState().addjsonconfig,
                        operationType: 'ADD',
                        id: functions.idReturn(
                            FFAppState().addjsonconfig.toString(), 'ID'),
                        tableID: () {
                          if (FFAppState().selectedSidebar == '2') {
                            return 'UPIHOST';
                          } else if (FFAppState().selectedSidebar == '7') {
                            return 'UPISOURCESUB';
                          } else if (FFAppState().selectedSidebar == '4') {
                            return 'UPICOMPLAINT';
                          } else if (FFAppState().selectedSidebar == '5') {
                            return 'UPICOUNTRY';
                          } else if (FFAppState().selectedSidebar == '6') {
                            return 'UPISMS';
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
                        editedBy: valueOrDefault<String>(
                          FFAppState().userid,
                          'BAN471120',
                        ),
                        dateTime: dateTimeFormat(
                            "yyyy-MM-ddTHH:mm:ss", getCurrentTimestamp),
                      );

                      if ((_model.addfieldsapires?.succeeded ?? true)) {
                        await showDialog(
                          context: context,
                          builder: (dialogContext) {
                            return Dialog(
                              elevation: 0,
                              insetPadding: EdgeInsets.zero,
                              backgroundColor: Colors.transparent,
                              alignment: AlignmentDirectional(0.0, 0.0)
                                  .resolve(Directionality.of(context)),
                              child: AlertSuccessfullDialogWidget(
                                alertText: 'Alert',
                                messageBody:
                                    'Data add request sent successfully',
                                callback: () async {
                                  Navigator.pop(context);
                                  Navigator.pop(context);
                                },
                              ),
                            );
                          },
                        );

                        FFAppState().apiConfigJson = null;
                        FFAppState().addjsonconfig = null;
                        safeSetState(() {});
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

                      safeSetState(() {});
                    },
                    text: 'ADD',
                    options: FFButtonOptions(
                      width: 200.0,
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFFE77817),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Mulish',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(20.0),
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
