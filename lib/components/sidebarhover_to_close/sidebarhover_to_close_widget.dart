import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sidebarhover_to_close_model.dart';
export 'sidebarhover_to_close_model.dart';

class SidebarhoverToCloseWidget extends StatefulWidget {
  const SidebarhoverToCloseWidget({
    super.key,
    this.menuText,
    this.icon,
    this.color,
    this.fontsize,
  });

  final String? menuText;
  final Widget? icon;
  final Color? color;
  final double? fontsize;

  @override
  State<SidebarhoverToCloseWidget> createState() =>
      _SidebarhoverToCloseWidgetState();
}

class _SidebarhoverToCloseWidgetState extends State<SidebarhoverToCloseWidget> {
  late SidebarhoverToCloseModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SidebarhoverToCloseModel());
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
      width: valueOrDefault<double>(
        () {
          if (MediaQuery.sizeOf(context).height >= 900.0) {
            return 268.0;
          } else if (MediaQuery.sizeOf(context).height <= 600.0) {
            return 182.0;
          } else {
            return 235.0;
          }
        }(),
        268.0,
      ),
      height: MediaQuery.sizeOf(context).height * 0.07,
      constraints: BoxConstraints(
        maxHeight: 60.0,
      ),
      decoration: BoxDecoration(
        color: valueOrDefault<Color>(
          ((widget!.menuText == 'PendingRequests') &&
                      FFAppState().PendingRequests) ||
                  ((widget!.menuText == 'UPI Host') && FFAppState().UpiHost) ||
                  ((widget!.menuText == 'UPI SMS') && FFAppState().UpiSms) ||
                  ((widget!.menuText == 'sys') && FFAppState().SYS) ||
                  ((widget!.menuText == 'UPI Complaint') &&
                      FFAppState().UpiComplaint) ||
                  ((widget!.menuText == 'UPI Country') &&
                      FFAppState().UpiCountry) ||
                  ((widget!.menuText == 'UPI Source') &&
                      FFAppState().UpiSource) ||
                  ((widget!.menuText == 'UPI Frm') && FFAppState().UpiFrm) ||
                  ((widget!.menuText == 'UPI Transaction') &&
                      FFAppState().UpiTransaction)
              ? FlutterFlowTheme.of(context).secondaryBackground
              : Color(0x00000000),
          FlutterFlowTheme.of(context).secondaryBackground,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                widget!.icon!,
                Text(
                  valueOrDefault<String>(
                    widget!.menuText,
                    'Pending Requests',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.mulish(
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: valueOrDefault<Color>(
                          ((widget!.menuText == 'PendingRequests') &&
                                      FFAppState().PendingRequests) ||
                                  ((widget!.menuText == 'UPI Host') &&
                                      FFAppState().UpiHost) ||
                                  ((widget!.menuText == 'UPI SMS') &&
                                      FFAppState().UpiSms) ||
                                  ((widget!.menuText == 'sys') &&
                                      FFAppState().SYS) ||
                                  ((widget!.menuText == 'UPI Complaint') &&
                                      FFAppState().UpiComplaint) ||
                                  ((widget!.menuText == 'UPI Country') &&
                                      FFAppState().UpiCountry) ||
                                  ((widget!.menuText == 'UPI Source') &&
                                      FFAppState().UpiSource) ||
                                  ((widget!.menuText == 'UPI Frm') &&
                                      FFAppState().UpiFrm) ||
                                  ((widget!.menuText == 'UPI Transaction') &&
                                      FFAppState().UpiTransaction)
                              ? FlutterFlowTheme.of(context).secondaryText
                              : FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                          FlutterFlowTheme.of(context).tertiary,
                        ),
                        fontSize: valueOrDefault<double>(
                          () {
                            if (MediaQuery.sizeOf(context).height >= 900.0) {
                              return 18.0;
                            } else if (MediaQuery.sizeOf(context).height <=
                                600.0) {
                              return 12.0;
                            } else {
                              return 16.0;
                            }
                          }(),
                          18.0,
                        ),
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
              ].divide(SizedBox(width: 14.0)),
            ),
          ],
        ),
      ),
    );
  }
}
