import '/components/chips_widget.dart';
import '/components/upi_host_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pending_req_comp_model.dart';
export 'pending_req_comp_model.dart';

class PendingReqCompWidget extends StatefulWidget {
  const PendingReqCompWidget({super.key});

  @override
  State<PendingReqCompWidget> createState() => _PendingReqCompWidgetState();
}

class _PendingReqCompWidgetState extends State<PendingReqCompWidget> {
  late PendingReqCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PendingReqCompModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.82,
      decoration: BoxDecoration(),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pending Requests',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.mulish(
                      fontWeight: FontWeight.w600,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    fontSize: 30.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        _model.selectedPRChip = 'upiHost';
                        _model.updatePage(() {});
                      },
                      child: wrapWithModel(
                        model: _model.chipsModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: ChipsWidget(
                          chipName: 'UPI HOST SERVER CONFIG',
                          colorChip: _model.selectedPRChip == 'upiHost'
                              ? Color(0xFFFF9F4C)
                              : Colors.white,
                          borderColor: _model.selectedPRChip == 'upiHost'
                              ? Color(0xFFFF9F4C)
                              : Colors.black,
                          nameColor: _model.selectedPRChip == 'upiHost'
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        _model.selectedPRChip = 'upiSms';
                        _model.updatePage(() {});
                      },
                      child: wrapWithModel(
                        model: _model.chipsModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: ChipsWidget(
                          chipName: 'UPI SMS TEMPLATES',
                          colorChip: _model.selectedPRChip == 'upiSms'
                              ? Color(0xFFFF9F4C)
                              : Colors.white,
                          borderColor: _model.selectedPRChip == 'upiSms'
                              ? Color(0xFFFF9F4C)
                              : Colors.black,
                          nameColor: _model.selectedPRChip == 'upiSms'
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        _model.selectedPRChip = 'sys';
                        _model.updatePage(() {});
                      },
                      child: wrapWithModel(
                        model: _model.chipsModel3,
                        updateCallback: () => safeSetState(() {}),
                        child: ChipsWidget(
                          chipName: 'SYS CONFIG',
                          colorChip: _model.selectedPRChip == 'sys'
                              ? Color(0xFFFF9F4C)
                              : Colors.white,
                          borderColor: _model.selectedPRChip == 'sys'
                              ? Color(0xFFFF9F4C)
                              : Colors.black,
                          nameColor: _model.selectedPRChip == 'sys'
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        _model.selectedPRChip = 'upiComplaint';
                        _model.updatePage(() {});
                      },
                      child: wrapWithModel(
                        model: _model.chipsModel4,
                        updateCallback: () => safeSetState(() {}),
                        child: ChipsWidget(
                          chipName: 'UPI COMPLAINT CODES',
                          colorChip: _model.selectedPRChip == 'upiComplaint'
                              ? Color(0xFFFF9F4C)
                              : Colors.white,
                          borderColor: _model.selectedPRChip == 'upiComplaint'
                              ? Color(0xFFFF9F4C)
                              : Colors.black,
                          nameColor: _model.selectedPRChip == 'upiComplaint'
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        _model.selectedPRChip = 'upiCountry';
                        _model.updatePage(() {});
                      },
                      child: wrapWithModel(
                        model: _model.chipsModel5,
                        updateCallback: () => safeSetState(() {}),
                        child: ChipsWidget(
                          chipName: 'UPI COUNTRY CODES',
                          colorChip: _model.selectedPRChip == 'upiCountry'
                              ? Color(0xFFFF9F4C)
                              : Colors.white,
                          borderColor: _model.selectedPRChip == 'upiCountry'
                              ? Color(0xFFFF9F4C)
                              : Colors.black,
                          nameColor: _model.selectedPRChip == 'upiCountry'
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        _model.selectedPRChip = 'upiSource';
                        _model.updatePage(() {});
                      },
                      child: wrapWithModel(
                        model: _model.chipsModel6,
                        updateCallback: () => safeSetState(() {}),
                        child: ChipsWidget(
                          chipName: 'UPI SOURCE CHANNELS',
                          colorChip: _model.selectedPRChip == 'upiSource'
                              ? Color(0xFFFF9F4C)
                              : Colors.white,
                          borderColor: _model.selectedPRChip == 'upiSource'
                              ? Color(0xFFFF9F4C)
                              : Colors.black,
                          nameColor: _model.selectedPRChip == 'upiSource'
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        _model.selectedPRChip = 'upiTransaction';
                        _model.updatePage(() {});
                      },
                      child: wrapWithModel(
                        model: _model.chipsModel7,
                        updateCallback: () => safeSetState(() {}),
                        child: ChipsWidget(
                          chipName: 'UPI SOURCE SUB CHANNELS',
                          colorChip: _model.selectedPRChip == 'upiTransaction'
                              ? Color(0xFFFF9F4C)
                              : Colors.white,
                          borderColor: _model.selectedPRChip == 'upiTransaction'
                              ? Color(0xFFFF9F4C)
                              : Colors.black,
                          nameColor: _model.selectedPRChip == 'upiTransaction'
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        _model.selectedPRChip = 'upiFrm';
                        _model.updatePage(() {});
                      },
                      child: wrapWithModel(
                        model: _model.chipsModel8,
                        updateCallback: () => safeSetState(() {}),
                        child: ChipsWidget(
                          chipName: 'UPI FRM WHITELIST ACCOUNTS',
                          colorChip: _model.selectedPRChip == 'upiFrm'
                              ? Color(0xFFFF9F4C)
                              : Colors.white,
                          borderColor: _model.selectedPRChip == 'upiFrm'
                              ? Color(0xFFFF9F4C)
                              : Colors.black,
                          nameColor: _model.selectedPRChip == 'upiFrm'
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        _model.selectedPRChip = 'upiTrans';
                        _model.updatePage(() {});
                      },
                      child: wrapWithModel(
                        model: _model.chipsModel9,
                        updateCallback: () => safeSetState(() {}),
                        child: ChipsWidget(
                          chipName: 'UPI TRANSACTION LIMITS',
                          colorChip: _model.selectedPRChip == 'upiTrans'
                              ? Color(0xFFFF9F4C)
                              : Colors.white,
                          borderColor: _model.selectedPRChip == 'upiTrans'
                              ? Color(0xFFFF9F4C)
                              : Colors.black,
                          nameColor: _model.selectedPRChip == 'upiTrans'
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ].divide(SizedBox(width: 10.0)),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 20.0, 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: wrapWithModel(
                    model: _model.upiHostComponentModel,
                    updateCallback: () => safeSetState(() {}),
                    child: UpiHostComponentWidget(),
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
