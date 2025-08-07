import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'sidebarhovermenu_to_open_model.dart';
export 'sidebarhovermenu_to_open_model.dart';

class SidebarhovermenuToOpenWidget extends StatefulWidget {
  const SidebarhovermenuToOpenWidget({
    super.key,
    this.menuText,
    this.icon,
    this.color,
    this.home,
    this.fontsize,
    this.highlight,
  });

  final String? menuText;
  final Widget? icon;
  final Color? color;
  final bool? home;
  final double? fontsize;
  final bool? highlight;

  @override
  State<SidebarhovermenuToOpenWidget> createState() =>
      _SidebarhovermenuToOpenWidgetState();
}

class _SidebarhovermenuToOpenWidgetState
    extends State<SidebarhovermenuToOpenWidget> {
  late SidebarhovermenuToOpenModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SidebarhovermenuToOpenModel());

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
      width: valueOrDefault<double>(
        () {
          if (MediaQuery.sizeOf(context).height >= 900.0) {
            return 280.0;
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
        color: () {
          if (((widget.menuText == 'PendingRequests') &&
                  _model.pendingRequests) ||
              ((widget.menuText == 'UPI Host') && _model.upiHost) ||
              ((widget.menuText == 'UPI SMS') && _model.upiSms) ||
              ((widget.menuText == 'sys') && _model.sys) ||
              ((widget.menuText == 'UPI Complaint') && _model.upiComplaint) ||
              ((widget.menuText == 'UPI Country') && _model.upiCountry) ||
              ((widget.menuText == 'UPI Source') && _model.upiSource) ||
              ((widget.menuText == 'UPI Frm') && _model.upiFrm) ||
              ((widget.menuText == 'UPI Transaction') &&
                  _model.upiTransaction)) {
            return FlutterFlowTheme.of(context).secondaryBackground;
          } else if (widget.highlight! ? true : false) {
            return FlutterFlowTheme.of(context).secondaryBackground;
          } else {
            return Color(0x00000000);
          }
        }(),
        borderRadius: BorderRadius.circular(valueOrDefault<double>(
          FFAppState().sidebar ? 15.0 : 1500.0,
          15.0,
        )),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Builder(
                  builder: (context) {
                    if (widget.menuText == 'Pending requests') {
                      return Icon(
                        Icons.home_rounded,
                        color: valueOrDefault<Color>(
                          () {
                            if (((widget.menuText == 'PendingRequests') &&
                                    _model.pendingRequests) ||
                                ((widget.menuText == 'UPI Host') &&
                                    _model.upiHost) ||
                                ((widget.menuText == 'UPI SMS') &&
                                    _model.upiSms) ||
                                ((widget.menuText == 'sys') && _model.sys) ||
                                ((widget.menuText == 'UPI Complaint') &&
                                    _model.upiComplaint) ||
                                ((widget.menuText == 'UPI Country') &&
                                    _model.upiCountry) ||
                                ((widget.menuText == 'UPI Source') &&
                                    _model.upiSource) ||
                                ((widget.menuText == 'UPI Frm') &&
                                    _model.upiFrm) ||
                                ((widget.menuText == 'UPI Transaction') &&
                                    _model.upiTransaction)) {
                              return FlutterFlowTheme.of(context).tertiary;
                            } else if (widget.highlight! ? true : false) {
                              return FlutterFlowTheme.of(context).tertiary;
                            } else {
                              return FlutterFlowTheme.of(context)
                                  .secondaryBackground;
                            }
                          }(),
                          FlutterFlowTheme.of(context).tertiary,
                        ),
                        size: valueOrDefault<double>(
                          () {
                            if (MediaQuery.sizeOf(context).height >= 900.0) {
                              return 24.0;
                            } else if (MediaQuery.sizeOf(context).height <=
                                600.0) {
                              return 14.0;
                            } else {
                              return 20.0;
                            }
                          }(),
                          24.0,
                        ),
                      );
                    } else if (widget.menuText == 'UPI Host') {
                      return Icon(
                        Icons.document_scanner_outlined,
                        color: valueOrDefault<Color>(
                          () {
                            if (((widget.menuText == 'PendingRequests') &&
                                    _model.pendingRequests) ||
                                ((widget.menuText == 'UPI Host') &&
                                    _model.upiHost) ||
                                ((widget.menuText == 'UPI SMS') &&
                                    _model.upiSms) ||
                                ((widget.menuText == 'sys') && _model.sys) ||
                                ((widget.menuText == 'UPI Complaint') &&
                                    _model.upiComplaint) ||
                                ((widget.menuText == 'UPI Country') &&
                                    _model.upiCountry) ||
                                ((widget.menuText == 'UPI Source') &&
                                    _model.upiSource) ||
                                ((widget.menuText == 'UPI Frm') &&
                                    _model.upiFrm) ||
                                ((widget.menuText == 'UPI Transaction') &&
                                    _model.upiTransaction)) {
                              return FlutterFlowTheme.of(context).tertiary;
                            } else if (widget.highlight! ? true : false) {
                              return FlutterFlowTheme.of(context).tertiary;
                            } else {
                              return FlutterFlowTheme.of(context)
                                  .secondaryBackground;
                            }
                          }(),
                          FlutterFlowTheme.of(context).tertiary,
                        ),
                        size: valueOrDefault<double>(
                          () {
                            if (MediaQuery.sizeOf(context).height >= 900.0) {
                              return 24.0;
                            } else if (MediaQuery.sizeOf(context).height <=
                                600.0) {
                              return 14.0;
                            } else {
                              return 20.0;
                            }
                          }(),
                          24.0,
                        ),
                      );
                    } else if (widget.menuText == 'UPI SMS') {
                      return Icon(
                        Icons.newspaper_sharp,
                        color: valueOrDefault<Color>(
                          () {
                            if (((widget.menuText == 'PendingRequests') &&
                                    _model.pendingRequests) ||
                                ((widget.menuText == 'UPI Host') &&
                                    _model.upiHost) ||
                                ((widget.menuText == 'UPI SMS') &&
                                    _model.upiSms) ||
                                ((widget.menuText == 'sys') && _model.sys) ||
                                ((widget.menuText == 'UPI Complaint') &&
                                    _model.upiComplaint) ||
                                ((widget.menuText == 'UPI Country') &&
                                    _model.upiCountry) ||
                                ((widget.menuText == 'UPI Source') &&
                                    _model.upiSource) ||
                                ((widget.menuText == 'UPI Frm') &&
                                    _model.upiFrm) ||
                                ((widget.menuText == 'UPI Transaction') &&
                                    _model.upiTransaction)) {
                              return FlutterFlowTheme.of(context).tertiary;
                            } else if (widget.highlight! ? true : false) {
                              return FlutterFlowTheme.of(context).tertiary;
                            } else {
                              return FlutterFlowTheme.of(context)
                                  .secondaryBackground;
                            }
                          }(),
                          FlutterFlowTheme.of(context).tertiary,
                        ),
                        size: valueOrDefault<double>(
                          () {
                            if (MediaQuery.sizeOf(context).height >= 900.0) {
                              return 24.0;
                            } else if (MediaQuery.sizeOf(context).height <=
                                600.0) {
                              return 14.0;
                            } else {
                              return 20.0;
                            }
                          }(),
                          24.0,
                        ),
                      );
                    } else if (widget.menuText == 'SYS') {
                      return Icon(
                        Icons.arrow_back,
                        color: valueOrDefault<Color>(
                          () {
                            if (((widget.menuText == 'PendingRequests') &&
                                    _model.pendingRequests) ||
                                ((widget.menuText == 'UPI Host') &&
                                    _model.upiHost) ||
                                ((widget.menuText == 'UPI SMS') &&
                                    _model.upiSms) ||
                                ((widget.menuText == 'sys') && _model.sys) ||
                                ((widget.menuText == 'UPI Complaint') &&
                                    _model.upiComplaint) ||
                                ((widget.menuText == 'UPI Country') &&
                                    _model.upiCountry) ||
                                ((widget.menuText == 'UPI Source') &&
                                    _model.upiSource) ||
                                ((widget.menuText == 'UPI Frm') &&
                                    _model.upiFrm) ||
                                ((widget.menuText == 'UPI Transaction') &&
                                    _model.upiTransaction)) {
                              return FlutterFlowTheme.of(context).tertiary;
                            } else if (widget.highlight! ? true : false) {
                              return FlutterFlowTheme.of(context).tertiary;
                            } else {
                              return FlutterFlowTheme.of(context)
                                  .secondaryBackground;
                            }
                          }(),
                          FlutterFlowTheme.of(context).tertiary,
                        ),
                        size: valueOrDefault<double>(
                          () {
                            if (MediaQuery.sizeOf(context).height >= 900.0) {
                              return 24.0;
                            } else if (MediaQuery.sizeOf(context).height <=
                                600.0) {
                              return 14.0;
                            } else {
                              return 20.0;
                            }
                          }(),
                          24.0,
                        ),
                      );
                    } else if (widget.menuText == 'UPI Complaint') {
                      return Icon(
                        Icons.credit_card,
                        color: valueOrDefault<Color>(
                          () {
                            if (((widget.menuText == 'PendingRequests') &&
                                    _model.pendingRequests) ||
                                ((widget.menuText == 'UPI Host') &&
                                    _model.upiHost) ||
                                ((widget.menuText == 'UPI SMS') &&
                                    _model.upiSms) ||
                                ((widget.menuText == 'sys') && _model.sys) ||
                                ((widget.menuText == 'UPI Complaint') &&
                                    _model.upiComplaint) ||
                                ((widget.menuText == 'UPI Country') &&
                                    _model.upiCountry) ||
                                ((widget.menuText == 'UPI Source') &&
                                    _model.upiSource) ||
                                ((widget.menuText == 'UPI Frm') &&
                                    _model.upiFrm) ||
                                ((widget.menuText == 'UPI Transaction') &&
                                    _model.upiTransaction)) {
                              return FlutterFlowTheme.of(context).tertiary;
                            } else if (widget.highlight! ? true : false) {
                              return FlutterFlowTheme.of(context).tertiary;
                            } else {
                              return FlutterFlowTheme.of(context)
                                  .secondaryBackground;
                            }
                          }(),
                          FlutterFlowTheme.of(context).tertiary,
                        ),
                        size: valueOrDefault<double>(
                          () {
                            if (MediaQuery.sizeOf(context).height >= 900.0) {
                              return 24.0;
                            } else if (MediaQuery.sizeOf(context).height <=
                                600.0) {
                              return 14.0;
                            } else {
                              return 20.0;
                            }
                          }(),
                          24.0,
                        ),
                      );
                    } else if (widget.menuText == 'UPI Country') {
                      return Icon(
                        Icons.monitor_heart,
                        color: valueOrDefault<Color>(
                          () {
                            if (((widget.menuText == 'PendingRequests') &&
                                    _model.pendingRequests) ||
                                ((widget.menuText == 'UPI Host') &&
                                    _model.upiHost) ||
                                ((widget.menuText == 'UPI SMS') &&
                                    _model.upiSms) ||
                                ((widget.menuText == 'sys') && _model.sys) ||
                                ((widget.menuText == 'UPI Complaint') &&
                                    _model.upiComplaint) ||
                                ((widget.menuText == 'UPI Country') &&
                                    _model.upiCountry) ||
                                ((widget.menuText == 'UPI Source') &&
                                    _model.upiSource) ||
                                ((widget.menuText == 'UPI Frm') &&
                                    _model.upiFrm) ||
                                ((widget.menuText == 'UPI Transaction') &&
                                    _model.upiTransaction)) {
                              return FlutterFlowTheme.of(context).tertiary;
                            } else if (widget.highlight! ? true : false) {
                              return FlutterFlowTheme.of(context).tertiary;
                            } else {
                              return FlutterFlowTheme.of(context)
                                  .secondaryBackground;
                            }
                          }(),
                          FlutterFlowTheme.of(context).tertiary,
                        ),
                        size: valueOrDefault<double>(
                          () {
                            if (MediaQuery.sizeOf(context).height >= 900.0) {
                              return 24.0;
                            } else if (MediaQuery.sizeOf(context).height <=
                                600.0) {
                              return 14.0;
                            } else {
                              return 20.0;
                            }
                          }(),
                          24.0,
                        ),
                      );
                    } else if (widget.menuText == 'UPI Source') {
                      return Icon(
                        Icons.folder_open,
                        color: valueOrDefault<Color>(
                          () {
                            if (((widget.menuText == 'PendingRequests') &&
                                    _model.pendingRequests) ||
                                ((widget.menuText == 'UPI Host') &&
                                    _model.upiHost) ||
                                ((widget.menuText == 'UPI SMS') &&
                                    _model.upiSms) ||
                                ((widget.menuText == 'sys') && _model.sys) ||
                                ((widget.menuText == 'UPI Complaint') &&
                                    _model.upiComplaint) ||
                                ((widget.menuText == 'UPI Country') &&
                                    _model.upiCountry) ||
                                ((widget.menuText == 'UPI Source') &&
                                    _model.upiSource) ||
                                ((widget.menuText == 'UPI Frm') &&
                                    _model.upiFrm) ||
                                ((widget.menuText == 'UPI Transaction') &&
                                    _model.upiTransaction)) {
                              return FlutterFlowTheme.of(context).tertiary;
                            } else if (widget.highlight! ? true : false) {
                              return FlutterFlowTheme.of(context).tertiary;
                            } else {
                              return FlutterFlowTheme.of(context)
                                  .secondaryBackground;
                            }
                          }(),
                          FlutterFlowTheme.of(context).tertiary,
                        ),
                        size: valueOrDefault<double>(
                          () {
                            if (MediaQuery.sizeOf(context).height >= 900.0) {
                              return 24.0;
                            } else if (MediaQuery.sizeOf(context).height <=
                                600.0) {
                              return 14.0;
                            } else {
                              return 20.0;
                            }
                          }(),
                          24.0,
                        ),
                      );
                    } else if (widget.menuText == 'UPI FRM') {
                      return Icon(
                        Icons.arrow_back,
                        color: valueOrDefault<Color>(
                          () {
                            if (((widget.menuText == 'PendingRequests') &&
                                    _model.pendingRequests) ||
                                ((widget.menuText == 'UPI Host') &&
                                    _model.upiHost) ||
                                ((widget.menuText == 'UPI SMS') &&
                                    _model.upiSms) ||
                                ((widget.menuText == 'sys') && _model.sys) ||
                                ((widget.menuText == 'UPI Complaint') &&
                                    _model.upiComplaint) ||
                                ((widget.menuText == 'UPI Country') &&
                                    _model.upiCountry) ||
                                ((widget.menuText == 'UPI Source') &&
                                    _model.upiSource) ||
                                ((widget.menuText == 'UPI Frm') &&
                                    _model.upiFrm) ||
                                ((widget.menuText == 'UPI Transaction') &&
                                    _model.upiTransaction)) {
                              return FlutterFlowTheme.of(context).tertiary;
                            } else if (widget.highlight! ? true : false) {
                              return FlutterFlowTheme.of(context).tertiary;
                            } else {
                              return FlutterFlowTheme.of(context)
                                  .secondaryBackground;
                            }
                          }(),
                          FlutterFlowTheme.of(context).tertiary,
                        ),
                        size: valueOrDefault<double>(
                          () {
                            if (MediaQuery.sizeOf(context).height >= 900.0) {
                              return 24.0;
                            } else if (MediaQuery.sizeOf(context).height <=
                                600.0) {
                              return 14.0;
                            } else {
                              return 20.0;
                            }
                          }(),
                          24.0,
                        ),
                      );
                    } else {
                      return Icon(
                        Icons.arrow_back,
                        color: valueOrDefault<Color>(
                          () {
                            if (((widget.menuText == 'PendingRequests') &&
                                    _model.pendingRequests) ||
                                ((widget.menuText == 'UPI Host') &&
                                    _model.upiHost) ||
                                ((widget.menuText == 'UPI SMS') &&
                                    _model.upiSms) ||
                                ((widget.menuText == 'sys') && _model.sys) ||
                                ((widget.menuText == 'UPI Complaint') &&
                                    _model.upiComplaint) ||
                                ((widget.menuText == 'UPI Country') &&
                                    _model.upiCountry) ||
                                ((widget.menuText == 'UPI Source') &&
                                    _model.upiSource) ||
                                ((widget.menuText == 'UPI Frm') &&
                                    _model.upiFrm) ||
                                ((widget.menuText == 'UPI Transaction') &&
                                    _model.upiTransaction)) {
                              return FlutterFlowTheme.of(context).tertiary;
                            } else if (widget.highlight! ? true : false) {
                              return FlutterFlowTheme.of(context).tertiary;
                            } else {
                              return FlutterFlowTheme.of(context)
                                  .secondaryBackground;
                            }
                          }(),
                          FlutterFlowTheme.of(context).tertiary,
                        ),
                        size: valueOrDefault<double>(
                          () {
                            if (MediaQuery.sizeOf(context).height >= 900.0) {
                              return 24.0;
                            } else if (MediaQuery.sizeOf(context).height <=
                                600.0) {
                              return 14.0;
                            } else {
                              return 20.0;
                            }
                          }(),
                          24.0,
                        ),
                      );
                    }
                  },
                ),
                Text(
                  valueOrDefault<String>(
                    widget.menuText,
                    'Pending Requests',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Mulish',
                        color: valueOrDefault<Color>(
                          () {
                            if (((widget.menuText == 'Pending Requests') &&
                                    _model.pendingRequests) ||
                                ((widget.menuText == 'UPI Host') &&
                                    _model.upiHost) ||
                                ((widget.menuText == 'UPI SMS') &&
                                    _model.upiSms) ||
                                ((widget.menuText == 'SYS') && _model.sys) ||
                                ((widget.menuText == 'UPI Complaint') &&
                                    _model.upiComplaint) ||
                                ((widget.menuText == 'UPI Country') &&
                                    _model.upiCountry) ||
                                ((widget.menuText == 'UPI Source') &&
                                    _model.upiSource) ||
                                ((widget.menuText == 'UPI FRM') &&
                                    _model.upiFrm) ||
                                ((widget.menuText == 'UPI Transaction') &&
                                    _model.upiTransaction)) {
                              return FlutterFlowTheme.of(context).tertiary;
                            } else if (widget.highlight! ? true : false) {
                              return FlutterFlowTheme.of(context).tertiary;
                            } else {
                              return FlutterFlowTheme.of(context)
                                  .secondaryBackground;
                            }
                          }(),
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
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ].divide(SizedBox(
                  width: valueOrDefault<double>(
                () {
                  if (MediaQuery.sizeOf(context).height >= 900.0) {
                    return 14.0;
                  } else if (MediaQuery.sizeOf(context).height <= 600.0) {
                    return 8.0;
                  } else {
                    return 10.0;
                  }
                }(),
                14.0,
              ))),
            ),
          ],
        ),
      ),
    );
  }
}
