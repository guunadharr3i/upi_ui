import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'editable_field_model.dart';
export 'editable_field_model.dart';

class EditableFieldWidget extends StatefulWidget {
  const EditableFieldWidget({
    super.key,
    this.heading,
    this.data,
    this.onChange,
    this.passDataItem,
    bool? showTooltip,
  }) : this.showTooltip = showTooltip ?? false;

  final String? heading;
  final String? data;
  final Future Function(String data)? onChange;
  final Future Function(List<DataTableNewModelStruct> fieldName)? passDataItem;
  final bool showTooltip;

  @override
  State<EditableFieldWidget> createState() => _EditableFieldWidgetState();
}

class _EditableFieldWidgetState extends State<EditableFieldWidget> {
  late EditableFieldModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditableFieldModel());

    _model.textController ??= TextEditingController(text: widget!.data);
    _model.textFieldFocusNode ??= FocusNode();
    _model.textFieldFocusNode!.addListener(
      () async {
        _model.edited = _model.textController.text;
        _model.textFieldsItems = (getJsonField(
          DataTableNewModelStruct(
            headers: (String var1) {
              return [var1];
            }(_model.textController.text),
          ).toMap(),
          r'''$''',
          true,
        )!
                .toList()
                .map<DataTableNewModelStruct?>(
                    DataTableNewModelStruct.maybeFromMap)
                .toList() as Iterable<DataTableNewModelStruct?>)
            .withoutNulls
            .toList()
            .cast<DataTableNewModelStruct>();
        safeSetState(() {});
        await widget.passDataItem?.call(
          _model.textFieldsItems,
        );
        FFAppState().editedFields = _model.textController.text;
        safeSetState(() {});
        await widget.onChange?.call(
          _model.textController.text,
        );
      },
    );
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 300.0,
          decoration: BoxDecoration(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(18.0, 0.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget!.heading,
                    'heading',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.mulish(
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
                AlignedTooltip(
                  content: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      widget!.data!,
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            font: GoogleFonts.mulish(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .fontStyle,
                          ),
                    ),
                  ),
                  offset: 4.0,
                  preferredDirection: AxisDirection.down,
                  borderRadius: BorderRadius.circular(8.0),
                  backgroundColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  elevation: 4.0,
                  tailBaseWidth: 24.0,
                  tailLength: 12.0,
                  waitDuration: Duration(milliseconds: 0),
                  showDuration: Duration(milliseconds: 0),
                  triggerMode: TooltipTriggerMode.tap,
                  child: Visibility(
                    visible: widget!.showTooltip,
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 18.0, 0.0),
                      child: Icon(
                        Icons.info_outline_rounded,
                        color: FlutterFlowTheme.of(context).tableText2,
                        size: 24.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: 300.0,
          height: 50.0,
          decoration: BoxDecoration(),
          child: Container(
            width: 300.0,
            child: TextFormField(
              controller: _model.textController,
              focusNode: _model.textFieldFocusNode,
              onChanged: (_) => EasyDebounce.debounce(
                '_model.textController',
                Duration(milliseconds: 2000),
                () async {
                  _model.edited = _model.textController.text;
                  _model.textFieldsItems = (getJsonField(
                    DataTableNewModelStruct(
                      headers: (String var1) {
                        return [var1];
                      }(_model.textController.text),
                    ).toMap(),
                    r'''$''',
                    true,
                  )!
                          .toList()
                          .map<DataTableNewModelStruct?>(
                              DataTableNewModelStruct.maybeFromMap)
                          .toList() as Iterable<DataTableNewModelStruct?>)
                      .withoutNulls
                      .toList()
                      .cast<DataTableNewModelStruct>();
                  safeSetState(() {});
                  await widget.passDataItem?.call(
                    _model.textFieldsItems,
                  );
                  FFAppState().editedFields = _model.textController.text;
                  safeSetState(() {});
                  await widget.onChange?.call(
                    _model.textController.text,
                  );
                },
              ),
              onFieldSubmitted: (_) async {
                _model.edited = _model.textController.text;
                _model.textFieldsItems = (getJsonField(
                  DataTableNewModelStruct(
                    headers: (String var1) {
                      return [var1];
                    }(_model.textController.text),
                  ).toMap(),
                  r'''$''',
                  true,
                )!
                        .toList()
                        .map<DataTableNewModelStruct?>(
                            DataTableNewModelStruct.maybeFromMap)
                        .toList() as Iterable<DataTableNewModelStruct?>)
                    .withoutNulls
                    .toList()
                    .cast<DataTableNewModelStruct>();
                safeSetState(() {});
                await widget.passDataItem?.call(
                  _model.textFieldsItems,
                );
                FFAppState().editedFields = _model.textController.text;
                safeSetState(() {});
                await widget.onChange?.call(
                  _model.textController.text,
                );
              },
              autofocus: false,
              obscureText: false,
              decoration: InputDecoration(
                isDense: true,
                alignLabelWithHint: false,
                hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      font: GoogleFonts.mulish(
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                      color: Colors.black,
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFC3C3C3),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFE77817),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                filled: true,
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                contentPadding:
                    EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 10.0, 20.0),
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.mulish(
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    color: Colors.black,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
              cursorColor: FlutterFlowTheme.of(context).primaryText,
              validator: _model.textControllerValidator.asValidator(context),
            ),
          ),
        ),
      ].divide(SizedBox(height: 12.0)),
    );
  }
}
