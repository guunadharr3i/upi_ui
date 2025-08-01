import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/editable_field_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'new_dynamic_edit_fields_model.dart';
export 'new_dynamic_edit_fields_model.dart';

class NewDynamicEditFieldsWidget extends StatefulWidget {
  const NewDynamicEditFieldsWidget({
    super.key,
    this.dataTableNewModel,
    required this.indexEdit,
  });

  final DataTableNewModelStruct? dataTableNewModel;
  final int? indexEdit;

  @override
  State<NewDynamicEditFieldsWidget> createState() =>
      _NewDynamicEditFieldsWidgetState();
}

class _NewDynamicEditFieldsWidgetState
    extends State<NewDynamicEditFieldsWidget> {
  late NewDynamicEditFieldsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewDynamicEditFieldsModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 100));
      _model.editableHeaders = widget!.dataTableNewModel;
      safeSetState(() {});
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

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          width: 1195.0,
          height: 700.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Edit The Fields',
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    font: GoogleFonts.mulish(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                    ),
                                    color: Color(0xFFF06E36),
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontStyle,
                                  ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {},
                              text: 'Update',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFFE77817),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.mulish(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFFEB6B9),
                              shape: BoxShape.circle,
                            ),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().apiConfigJson = null;
                                safeSetState(() {});
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.close,
                                color: FlutterFlowTheme.of(context).tableText2,
                                size: 24.0,
                              ),
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
                      final gview = _model
                              .editableHeaders?.value?.firstOrNull?.modelList
                              ?.toList() ??
                          [];

                      return GridView.builder(
                        padding: EdgeInsets.zero,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 5.0,
                          childAspectRatio: 3.5,
                        ),
                        scrollDirection: Axis.vertical,
                        itemCount: gview.length,
                        itemBuilder: (context, gviewIndex) {
                          final gviewItem = gview[gviewIndex];
                          return EditableFieldWidget(
                            key: Key('Keybun_${gviewIndex}_of_${gview.length}'),
                            heading: _model.editableHeaders?.headers
                                ?.elementAtOrNull(gviewIndex),
                            data: gviewItem,
                            showTooltip: true,
                            onChange: (data) async {
                              await actions.updatelistdata(
                                gviewIndex,
                                data,
                                _model.editableHeaders!.value.firstOrNull!
                                    .modelList
                                    .toList(),
                                _model.editableHeaders!.headers.toList(),
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
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      _model.updateEditableHeadersStruct(
                        (e) => e
                          ..headers = widget!.dataTableNewModel!.value
                              .map((e) => e.modelList.firstOrNull)
                              .withoutNulls
                              .toList(),
                      );
                      _model.updatePage(() {});
                      _model.apiResulttcb = await HostOpeartionsCall.call(
                        dataJson: FFAppState().apiConfigJson,
                        operationType: 'UPDATE',
                        id: _model.editableHeaders?.value?.firstOrNull
                            ?.modelList?.firstOrNull,
                        tableID: FFAppState().selectedSidebar == '2'
                            ? 'UPIHOST'
                            : 'SYS',
                        editedBy: FFAppState().userid,
                      );

                      if ((_model.apiResulttcb?.succeeded ?? true)) {
                        Navigator.pop(context);
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: Text('Alert'),
                              content:
                                  Text('Data has been updated successfully '),
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
                        FFAppState().apiConfigJson = null;
                        FFAppState().token = getJsonField(
                          (_model.apiResulttcb?.jsonBody ?? ''),
                          r'''$.token''',
                        ).toString();
                        safeSetState(() {});
                      } else {
                        Navigator.pop(context);
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: Text('Alert'),
                              content: Text(getJsonField(
                                (_model.apiResulttcb?.jsonBody ?? ''),
                                r'''$.message''',
                              ).toString()),
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

                      safeSetState(() {});
                    },
                    text: 'Save Data',
                    options: FFButtonOptions(
                      width: 220.0,
                      height: 50.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFFF06E36),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                font: GoogleFonts.mulish(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                                color: Colors.white,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
            ].addToStart(SizedBox(height: 15.0)),
          ),
        ),
      ),
    );
  }
}
