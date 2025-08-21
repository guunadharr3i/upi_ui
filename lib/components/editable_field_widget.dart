import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
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

    _model.textController1 ??= TextEditingController(text: widget.data);
    _model.textFieldFocusNode1 ??= FocusNode();
    _model.textFieldFocusNode1!.addListener(
      () async {
        _model.edited = _model.textController1.text;
        _model.textFieldsItems = (getJsonField(
          DataTableNewModelStruct(
            headers: (String var1) {
              return [var1];
            }(_model.textController1.text),
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
        FFAppState().editedFields = _model.textController1.text;
        safeSetState(() {});
        await widget.onChange?.call(
          _model.textController1.text,
        );
      },
    );
    _model.textController2 ??= TextEditingController(text: widget.data);
    _model.textFieldFocusNode2 ??= FocusNode();
    _model.textFieldFocusNode2!.addListener(
      () async {
        _model.edited = _model.textController2.text;
        _model.textFieldsItems = (getJsonField(
          DataTableNewModelStruct(
            headers: (String var1) {
              return [var1];
            }(_model.textController2.text),
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
        FFAppState().editedFields = _model.textController2.text;
        safeSetState(() {});
        await widget.onChange?.call(
          _model.textController2.text,
        );
      },
    );
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
                    widget.heading,
                    'heading',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Mulish',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                      ),
                ),
                AlignedTooltip(
                  content: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      widget.data!,
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Mulish',
                            letterSpacing: 0.0,
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
                    visible: widget.showTooltip,
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (!((widget.heading == 'READ_TIMEOUT') ||
                  (widget.heading == 'CONNECT_TIMEOUT') ||
                  (widget.heading == 'MAX_CONNECTIONS') ||
                  (widget.heading == 'MAX_PER_ROUTE') ||
                  (widget.heading == 'PROXY_PORT')))
                Container(
                  width: 300.0,
                  child: TextFormField(
                    controller: _model.textController1,
                    focusNode: _model.textFieldFocusNode1,
                    onChanged: (_) => EasyDebounce.debounce(
                      '_model.textController1',
                      Duration(milliseconds: 2000),
                      () async {
                        _model.edited = _model.textController1.text;
                        _model.textFieldsItems = (getJsonField(
                          DataTableNewModelStruct(
                            headers: (String var1) {
                              return [var1];
                            }(_model.textController1.text),
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
                        FFAppState().editedFields = _model.textController1.text;
                        safeSetState(() {});
                        await widget.onChange?.call(
                          _model.textController1.text,
                        );
                      },
                    ),
                    onFieldSubmitted: (_) async {
                      _model.edited = _model.textController1.text;
                      _model.textFieldsItems = (getJsonField(
                        DataTableNewModelStruct(
                          headers: (String var1) {
                            return [var1];
                          }(_model.textController1.text),
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
                      FFAppState().editedFields = _model.textController1.text;
                      safeSetState(() {});
                      await widget.onChange?.call(
                        _model.textController1.text,
                      );
                    },
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      isDense: true,
                      alignLabelWithHint: false,
                      hintStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Mulish',
                                color: Colors.black,
                                letterSpacing: 0.0,
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
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      contentPadding: EdgeInsetsDirectional.fromSTEB(
                          10.0, 20.0, 10.0, 20.0),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Mulish',
                          color: Colors.black,
                          letterSpacing: 0.0,
                        ),
                    cursorColor: FlutterFlowTheme.of(context).primaryText,
                    validator:
                        _model.textController1Validator.asValidator(context),
                  ),
                ),
              if ((widget.heading == 'READ_TIMEOUT') ||
                  (widget.heading == 'CONNECT_TIMEOUT') ||
                  (widget.heading == 'MAX_CONNECTIONS') ||
                  (widget.heading == 'MAX_PER_ROUTE') ||
                  (widget.heading == 'PROXY_PORT'))
                Container(
                  width: 300.0,
                  child: TextFormField(
                    controller: _model.textController2,
                    focusNode: _model.textFieldFocusNode2,
                    onChanged: (_) => EasyDebounce.debounce(
                      '_model.textController2',
                      Duration(milliseconds: 2000),
                      () async {
                        _model.edited = _model.textController2.text;
                        _model.textFieldsItems = (getJsonField(
                          DataTableNewModelStruct(
                            headers: (String var1) {
                              return [var1];
                            }(_model.textController2.text),
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
                        FFAppState().editedFields = _model.textController2.text;
                        safeSetState(() {});
                        await widget.onChange?.call(
                          _model.textController2.text,
                        );
                      },
                    ),
                    onFieldSubmitted: (_) async {
                      _model.edited = _model.textController2.text;
                      _model.textFieldsItems = (getJsonField(
                        DataTableNewModelStruct(
                          headers: (String var1) {
                            return [var1];
                          }(_model.textController2.text),
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
                      FFAppState().editedFields = _model.textController2.text;
                      safeSetState(() {});
                      await widget.onChange?.call(
                        _model.textController2.text,
                      );
                    },
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      isDense: true,
                      alignLabelWithHint: false,
                      hintStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Mulish',
                                color: Colors.black,
                                letterSpacing: 0.0,
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
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      contentPadding: EdgeInsetsDirectional.fromSTEB(
                          10.0, 20.0, 10.0, 20.0),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Mulish',
                          color: Colors.black,
                          letterSpacing: 0.0,
                        ),
                    cursorColor: FlutterFlowTheme.of(context).primaryText,
                    validator:
                        _model.textController2Validator.asValidator(context),
                  ),
                ),
            ],
          ),
        ),
      ].divide(SizedBox(height: 12.0)),
    );
  }
}
