import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'search_comp_model.dart';
export 'search_comp_model.dart';

class SearchCompWidget extends StatefulWidget {
  const SearchCompWidget({
    super.key,
    required this.callBack,
    required this.inputVal,
    this.onChnagedCallBack,
    required this.addNewHostCalllBack,
  });

  final Future Function()? callBack;
  final String? inputVal;
  final Future Function()? onChnagedCallBack;
  final Future Function()? addNewHostCalllBack;

  @override
  State<SearchCompWidget> createState() => _SearchCompWidgetState();
}

class _SearchCompWidgetState extends State<SearchCompWidget> {
  late SearchCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchCompModel());

    _model.textController ??=
        TextEditingController(text: FFAppState().searchVal);
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFD0C6C6),
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Container(
              width: 500.0,
              height: 60.0,
              decoration: BoxDecoration(
                color: Color(0xFFD0C6C6),
                borderRadius: BorderRadius.circular(50.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).alternate,
                ),
              ),
              child: Stack(
                children: [
                  TextFormField(
                    controller: _model.textController,
                    focusNode: _model.textFieldFocusNode,
                    onChanged: (_) => EasyDebounce.debounce(
                      '_model.textController',
                      Duration(milliseconds: 2000),
                      () async {
                        await widget.onChnagedCallBack?.call();
                      },
                    ),
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      isDense: true,
                      labelText: widget!.inputVal == 'upiHost'
                          ? 'Enter Host here...'
                          : 'Enter ID here...',
                      labelStyle: FlutterFlowTheme.of(context)
                          .labelMedium
                          .override(
                            font: GoogleFonts.mulish(
                              fontWeight: FontWeight.normal,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .fontStyle,
                          ),
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                font: GoogleFonts.mulish(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                ),
                                color: Colors.black,
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .fontStyle,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).accent3,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).tertiary,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      filled: true,
                      fillColor: FlutterFlowTheme.of(context).tableHeaderColor,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 50.0),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.mulish(
                            fontWeight: FontWeight.w500,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: Colors.black,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                    textAlign: TextAlign.start,
                    minLines: 1,
                    cursorColor: FlutterFlowTheme.of(context).primaryText,
                    validator:
                        _model.textControllerValidator.asValidator(context),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.91, -0.08),
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await widget.callBack?.call();
                          },
                          child: Icon(
                            Icons.search_rounded,
                            color: FlutterFlowTheme.of(context).tertiary,
                            size: 40.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              await widget.addNewHostCalllBack?.call();
            },
            child: Container(
              width: 200.0,
              height: 45.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).headingColor,
                borderRadius: BorderRadius.circular(24.0),
              ),
              child: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Text(
                  'Add New Host',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.mulish(
                          fontWeight: FontWeight.w500,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        fontSize: 15.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
