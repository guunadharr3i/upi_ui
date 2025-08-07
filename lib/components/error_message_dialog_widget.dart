import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'error_message_dialog_model.dart';
export 'error_message_dialog_model.dart';

class ErrorMessageDialogWidget extends StatefulWidget {
  const ErrorMessageDialogWidget({
    super.key,
    String? errorMessageBody,
    String? titleValue,
  })  : this.errorMessageBody =
            errorMessageBody ?? 'Something went wrong or No data found!',
        this.titleValue = titleValue ?? 'Alert';

  final String errorMessageBody;
  final String titleValue;

  @override
  State<ErrorMessageDialogWidget> createState() =>
      _ErrorMessageDialogWidgetState();
}

class _ErrorMessageDialogWidgetState extends State<ErrorMessageDialogWidget> {
  late ErrorMessageDialogModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ErrorMessageDialogModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.titleValue,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Mulish',
                        color: FlutterFlowTheme.of(context).primary,
                        fontSize: 20.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
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
                    width: 28.0,
                    height: 28.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).tEimanFont,
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    child: Icon(
                      Icons.close_sharp,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 20.0,
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 45.0, 0.0, 0.0),
                child: Text(
                  widget.errorMessageBody,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Mulish',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 8.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 75.0,
                  height: 45.0,
                  decoration: BoxDecoration(
                    color:
                        FlutterFlowTheme.of(context).secondaryNavBarFillColor,
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      'OK',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Mulish',
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
