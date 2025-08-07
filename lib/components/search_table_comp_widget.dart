import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'search_table_comp_model.dart';
export 'search_table_comp_model.dart';

class SearchTableCompWidget extends StatefulWidget {
  const SearchTableCompWidget({
    super.key,
    required this.searchAction,
    required this.selectedMenuItems,
  });

  final Future Function()? searchAction;
  final String? selectedMenuItems;

  @override
  State<SearchTableCompWidget> createState() => _SearchTableCompWidgetState();
}

class _SearchTableCompWidgetState extends State<SearchTableCompWidget> {
  late SearchTableCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchTableCompModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      safeSetState(() {
        _model.textController?.text = FFAppState().searchVal;
      });
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
      width: 650.0,
      height: 350.0,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 4.0,
            color: Color(0x33000000),
            offset: Offset(
              0.0,
              2.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Text(
                  'Search By ',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Mulish',
                        fontSize: 30.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Text(
                  widget.selectedMenuItems == 'upiHost' ? 'Host' : 'ID',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Mulish',
                        fontSize: 30.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Text(
                  'Enter an \n',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Mulish',
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 19.0),
                  child: Text(
                    widget.selectedMenuItems == 'upiHost' ? 'Host' : 'ID',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Mulish',
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Text(
                  ' to find what you\'re looking for...\n',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Mulish',
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFD0C6C6),
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Stack(
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                  child: Container(
                    width: 500.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFD0C6C6),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Stack(
                      children: [
                        TextFormField(
                          controller: _model.textController,
                          focusNode: _model.textFieldFocusNode,
                          autofocus: false,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: true,
                            labelText: widget.selectedMenuItems == 'upiHost'
                                ? 'Enter Host here...'
                                : 'Enter ID here...',
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Mulish',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Mulish',
                                  color: Colors.black,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
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
                            fillColor: Colors.white,
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 50.0),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Mulish',
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                          textAlign: TextAlign.start,
                          minLines: 1,
                          cursorColor: FlutterFlowTheme.of(context).primaryText,
                          validator: _model.textControllerValidator
                              .asValidator(context),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.91, -0.08),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await widget.searchAction?.call();
                            },
                            child: Icon(
                              Icons.search_rounded,
                              color: Colors.black,
                              size: 40.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ].divide(SizedBox(height: 15.0)),
      ),
    );
  }
}
