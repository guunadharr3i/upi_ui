import '/backend/api_requests/api_calls.dart';
import '/components/delete_dialog_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'new_sidebar_model.dart';
export 'new_sidebar_model.dart';

class NewSidebarWidget extends StatefulWidget {
  const NewSidebarWidget({
    super.key,
    this.pendingRequestsNav,
  });

  final Future Function()? pendingRequestsNav;

  @override
  State<NewSidebarWidget> createState() => _NewSidebarWidgetState();
}

class _NewSidebarWidgetState extends State<NewSidebarWidget> {
  late NewSidebarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewSidebarModel());

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

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Builder(
          builder: (context) {
            if (_model.hideExpansion) {
              return Container(
                width: 263.0,
                height: double.infinity,
                child: Stack(
                  children: [
                    Container(
                      width: 240.0,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 0.0, 20.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 213.0,
                                height: 66.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  image: DecorationImage(
                                    fit: BoxFit.scaleDown,
                                    image: Image.asset(
                                      'assets/images/ICICI_SVG.jpg',
                                    ).image,
                                  ),
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
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    2.0, 0.0, 0.0, 0.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          FFAppState().PendingRequests = true;
                                          FFAppState().UpiHost = false;
                                          FFAppState().UpiSms = false;
                                          FFAppState().SYS = false;
                                          FFAppState().UpiComplaint = false;
                                          FFAppState().UpiCountry = false;
                                          FFAppState().UpiSource = false;
                                          FFAppState().UpiFrm = false;
                                          FFAppState().UpiTransaction = false;
                                          safeSetState(() {});

                                          context.pushNamed(
                                            DashboardScreenWidget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                              ),
                                            },
                                          );

                                          FFAppState().selectedSidebar = '1';
                                          FFAppState().update(() {});
                                        },
                                        child: Container(
                                          width: 245.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FFAppState()
                                                        .selectedSidebar ==
                                                    '1'
                                                ? Color(0xFFFFE3CA)
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons
                                                      .hourglass_bottom_rounded,
                                                  color: FFAppState()
                                                          .PendingRequests
                                                      ? Color(0xFFF06321)
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  size: 24.0,
                                                ),
                                                Text(
                                                  'Pending requests',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ].divide(SizedBox(width: 10.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          FFAppState().PendingRequests = false;
                                          FFAppState().UpiHost = true;
                                          FFAppState().UpiSms = false;
                                          FFAppState().SYS = false;
                                          FFAppState().UpiComplaint = false;
                                          FFAppState().UpiCountry = false;
                                          FFAppState().UpiSource = false;
                                          FFAppState().UpiFrm = false;
                                          FFAppState().UpiTransaction = false;
                                          safeSetState(() {});
                                          FFAppState().selectedSidebar = '2';
                                          FFAppState().update(() {});

                                          context.pushNamed(
                                            DashboardScreenWidget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                              ),
                                            },
                                          );
                                        },
                                        child: Container(
                                          width: 245.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FFAppState()
                                                        .selectedSidebar ==
                                                    '2'
                                                ? Color(0xFFFFE3CA)
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.storage_rounded,
                                                  size: 24.0,
                                                ),
                                                Text(
                                                  'UPI Host',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        color: FFAppState()
                                                                .UpiHost
                                                            ? Color(0xFFF06321)
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ].divide(SizedBox(width: 10.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          FFAppState().PendingRequests = false;
                                          FFAppState().UpiHost = false;
                                          FFAppState().UpiSms = false;
                                          FFAppState().SYS = true;
                                          FFAppState().UpiComplaint = false;
                                          FFAppState().UpiCountry = false;
                                          FFAppState().UpiSource = false;
                                          FFAppState().UpiFrm = false;
                                          FFAppState().UpiTransaction = false;
                                          safeSetState(() {});
                                          FFAppState().selectedSidebar = '3';
                                          FFAppState().update(() {});

                                          context.pushNamed(
                                            DashboardScreenWidget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                              ),
                                            },
                                          );
                                        },
                                        child: Container(
                                          width: 245.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FFAppState()
                                                        .selectedSidebar ==
                                                    '3'
                                                ? Color(0xFFFFE3CA)
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.laptop,
                                                  size: 24.0,
                                                ),
                                                Text(
                                                  'SYS',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        color: FFAppState().SYS
                                                            ? Color(0xFFF06321)
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ].divide(SizedBox(width: 10.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.upiComplaint = true;
                                          _model.pendingRequests = false;
                                          _model.upiHost = false;
                                          _model.upiSms = false;
                                          _model.sys = false;
                                          _model.upiCountry = false;
                                          _model.upiSource = false;
                                          _model.upiFrm = false;
                                          _model.upiTransaction = false;
                                          safeSetState(() {});
                                          FFAppState().selectedSidebar = '4';
                                          FFAppState().UpiHost = false;
                                          FFAppState().SYS = false;
                                          safeSetState(() {});

                                          context.pushNamed(
                                            DashboardScreenWidget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                              ),
                                            },
                                          );
                                        },
                                        child: Container(
                                          width: 245.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FFAppState()
                                                        .selectedSidebar ==
                                                    '4'
                                                ? Color(0xFFFFE3CA)
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.info_outline_rounded,
                                                  size: 24.0,
                                                ),
                                                Text(
                                                  'UPI Complaint',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        color: _model
                                                                .upiComplaint!
                                                            ? Color(0xFFF06321)
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ].divide(SizedBox(width: 10.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.upiCountry = true;
                                          _model.pendingRequests = false;
                                          _model.upiHost = false;
                                          _model.upiSms = false;
                                          _model.sys = false;
                                          _model.upiComplaint = false;
                                          _model.upiSource = false;
                                          _model.upiFrm = false;
                                          _model.upiTransaction = false;
                                          safeSetState(() {});
                                          FFAppState().selectedSidebar = '5';
                                          FFAppState().UpiHost = false;
                                          FFAppState().SYS = false;
                                          safeSetState(() {});

                                          context.pushNamed(
                                              DashboardScreenWidget.routeName);
                                        },
                                        child: Container(
                                          width: 245.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FFAppState()
                                                        .selectedSidebar ==
                                                    '5'
                                                ? Color(0xFFFFE3CA)
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                FaIcon(
                                                  FontAwesomeIcons.globe,
                                                  size: 24.0,
                                                ),
                                                Text(
                                                  'UPI Country',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        color: _model
                                                                .upiCountry!
                                                            ? Color(0xFFF06321)
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ].divide(SizedBox(width: 10.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.upiSms = true;
                                          _model.pendingRequests = false;
                                          _model.upiHost = false;
                                          _model.sys = false;
                                          _model.upiComplaint = false;
                                          _model.upiCountry = false;
                                          _model.upiSource = false;
                                          _model.upiFrm = false;
                                          _model.upiTransaction = false;
                                          _model.upiBank = false;
                                          _model.upiInteroperable = false;
                                          _model.upiSourceSub = false;
                                          safeSetState(() {});
                                          FFAppState().selectedSidebar = '6';
                                          FFAppState().UpiHost = false;
                                          FFAppState().SYS = false;
                                          safeSetState(() {});

                                          context.pushNamed(
                                              DashboardScreenWidget.routeName);
                                        },
                                        child: Container(
                                          width: 245.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FFAppState()
                                                        .selectedSidebar ==
                                                    '6'
                                                ? Color(0xFFFFE3CA)
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.sms_outlined,
                                                  size: 24.0,
                                                ),
                                                Text(
                                                  'UPI SMS',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        color: _model.upiSms!
                                                            ? Color(0xFFF06321)
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ].divide(SizedBox(width: 10.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.upiSource = false;
                                          _model.pendingRequests = false;
                                          _model.upiHost = false;
                                          _model.upiSms = false;
                                          _model.sys = false;
                                          _model.upiComplaint = false;
                                          _model.upiCountry = false;
                                          _model.upiFrm = false;
                                          _model.upiTransaction = false;
                                          _model.upiSourceSub = true;
                                          _model.upiBank = false;
                                          _model.upiInteroperable = false;
                                          safeSetState(() {});
                                          FFAppState().selectedSidebar = '7';
                                          FFAppState().UpiHost = false;
                                          FFAppState().SYS = false;
                                          safeSetState(() {});

                                          context.pushNamed(
                                              DashboardScreenWidget.routeName);
                                        },
                                        child: Container(
                                          width: 245.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FFAppState()
                                                        .selectedSidebar ==
                                                    '7'
                                                ? Color(0xFFFFE3CA)
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons
                                                      .auto_awesome_motion_outlined,
                                                  size: 24.0,
                                                ),
                                                Text(
                                                  'UPI Source Sub',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        color: _model
                                                                .upiSourceSub!
                                                            ? Color(0xFFF06321)
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ].divide(SizedBox(width: 10.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.upiFrm = true;
                                          _model.pendingRequests = false;
                                          _model.upiHost = false;
                                          _model.upiSms = false;
                                          _model.sys = false;
                                          _model.upiComplaint = false;
                                          _model.upiCountry = false;
                                          _model.upiSource = false;
                                          _model.upiTransaction = false;
                                          safeSetState(() {});
                                          FFAppState().selectedSidebar = '8';
                                          FFAppState().SYS = false;
                                          FFAppState().UpiHost = false;
                                          safeSetState(() {});

                                          context.pushNamed(
                                              DashboardScreenWidget.routeName);
                                        },
                                        child: Container(
                                          width: 245.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FFAppState()
                                                        .selectedSidebar ==
                                                    '8'
                                                ? Color(0xFFFFE3CA)
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons
                                                      .curtains_closed_outlined,
                                                  size: 24.0,
                                                ),
                                                Text(
                                                  'UPI FRM',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        color: _model.upiFrm
                                                            ? Color(0xFFF06321)
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ].divide(SizedBox(width: 10.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.upiTransaction = true;
                                          _model.pendingRequests = false;
                                          _model.upiHost = false;
                                          _model.upiSms = false;
                                          _model.sys = false;
                                          _model.upiComplaint = false;
                                          _model.upiCountry = false;
                                          _model.upiSource = false;
                                          _model.upiFrm = false;
                                          safeSetState(() {});
                                          FFAppState().selectedSidebar = '9';
                                          FFAppState().UpiHost = false;
                                          FFAppState().SYS = false;
                                          safeSetState(() {});

                                          context.pushNamed(
                                              DashboardScreenWidget.routeName);
                                        },
                                        child: Container(
                                          width: 245.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FFAppState()
                                                        .selectedSidebar ==
                                                    '9'
                                                ? Color(0xFFFFE3CA)
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.money_rounded,
                                                  size: 24.0,
                                                ),
                                                Text(
                                                  'UPI Transaction',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        color: _model
                                                                .upiTransaction!
                                                            ? Color(0xFFF06321)
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ].divide(SizedBox(width: 10.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.upiTransaction = false;
                                          _model.pendingRequests = false;
                                          _model.upiHost = false;
                                          _model.upiSms = false;
                                          _model.sys = false;
                                          _model.upiComplaint = false;
                                          _model.upiCountry = false;
                                          _model.upiSource = false;
                                          _model.upiFrm = false;
                                          _model.upiBank = true;
                                          _model.upiInteroperable = false;
                                          _model.upiSourceSub = false;
                                          safeSetState(() {});
                                          FFAppState().selectedSidebar = '10';
                                          FFAppState().UpiHost = false;
                                          FFAppState().SYS = false;
                                          safeSetState(() {});

                                          context.pushNamed(
                                              DashboardScreenWidget.routeName);
                                        },
                                        child: Container(
                                          width: 245.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FFAppState()
                                                        .selectedSidebar ==
                                                    '10'
                                                ? Color(0xFFFFE3CA)
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                FaIcon(
                                                  FontAwesomeIcons.landmark,
                                                  size: 24.0,
                                                ),
                                                Text(
                                                  'UPI Bank',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        color: _model.upiBank!
                                                            ? Color(0xFFF06321)
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ].divide(SizedBox(width: 10.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.upiTransaction = false;
                                          _model.pendingRequests = false;
                                          _model.upiHost = false;
                                          _model.upiSms = false;
                                          _model.sys = false;
                                          _model.upiComplaint = false;
                                          _model.upiCountry = false;
                                          _model.upiSource = true;
                                          _model.upiFrm = false;
                                          _model.upiBank = false;
                                          _model.upiInteroperable = false;
                                          _model.upiSourceSub = false;
                                          safeSetState(() {});
                                          FFAppState().selectedSidebar = '11';
                                          FFAppState().UpiHost = false;
                                          FFAppState().SYS = false;
                                          safeSetState(() {});

                                          context.pushNamed(
                                              DashboardScreenWidget.routeName);
                                        },
                                        child: Container(
                                          width: 245.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FFAppState()
                                                        .selectedSidebar ==
                                                    '11'
                                                ? Color(0xFFFFE3CA)
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.source_outlined,
                                                  size: 24.0,
                                                ),
                                                Text(
                                                  'UPI Source',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        color: _model.upiSource!
                                                            ? Color(0xFFF06321)
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ].divide(SizedBox(width: 10.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.upiTransaction = false;
                                          _model.pendingRequests = false;
                                          _model.upiHost = false;
                                          _model.upiSms = false;
                                          _model.sys = false;
                                          _model.upiComplaint = false;
                                          _model.upiCountry = false;
                                          _model.upiSource = false;
                                          _model.upiFrm = false;
                                          _model.upiBank = false;
                                          _model.upiInteroperable = true;
                                          _model.upiSourceSub = false;
                                          safeSetState(() {});
                                          FFAppState().selectedSidebar = '12';
                                          FFAppState().UpiHost = false;
                                          FFAppState().SYS = false;
                                          safeSetState(() {});

                                          context.pushNamed(
                                              DashboardScreenWidget.routeName);
                                        },
                                        child: Container(
                                          width: 245.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FFAppState()
                                                        .selectedSidebar ==
                                                    '12'
                                                ? Color(0xFFFFE3CA)
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.bar_chart_rounded,
                                                  size: 24.0,
                                                ),
                                                Text(
                                                  'Interoperable',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        color: _model
                                                                .upiInteroperable!
                                                            ? Color(0xFFF06321)
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ].divide(SizedBox(width: 10.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 230.0,
                                        child: Divider(
                                          thickness: 2.0,
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {},
                                        child: Container(
                                          width: 245.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Builder(
                                            builder: (context) => Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 0.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await showDialog(
                                                    context: context,
                                                    builder: (dialogContext) {
                                                      return Dialog(
                                                        elevation: 0,
                                                        insetPadding:
                                                            EdgeInsets.zero,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        alignment:
                                                            AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                        child:
                                                            DeleteDialogWidget(
                                                          messageBody:
                                                              'Are you sure you want to log out?',
                                                          actionCallback:
                                                              () async {
                                                            _model.apiResult3re =
                                                                await LogoutCall
                                                                    .call();

                                                            if ((_model
                                                                    .apiResult3re
                                                                    ?.succeeded ??
                                                                true)) {
                                                              FFAppState()
                                                                  .deviceHash = '';
                                                              FFAppState()
                                                                  .token = '';
                                                              FFAppState()
                                                                  .userid = '';
                                                              safeSetState(
                                                                  () {});
                                                              await actions
                                                                  .clearSession();
                                                              await Future
                                                                  .delayed(
                                                                Duration(
                                                                  milliseconds:
                                                                      650,
                                                                ),
                                                              );
                                                              Navigator.pop(
                                                                  context);

                                                              context.goNamed(
                                                                  LoginpageWidget
                                                                      .routeName);
                                                            }
                                                          },
                                                        ),
                                                      );
                                                    },
                                                  );

                                                  safeSetState(() {});
                                                },
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons.logout_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                    Text(
                                                      'Logout',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Mulish',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            fontSize: 18.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 10.0)),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 5.0)),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(height: 40.0)),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.96, 0.02),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          _model.hideExpansion = false;
                          _model.updatePage(() {});
                        },
                        child: Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(0xFFF06321),
                            ),
                          ),
                          child: Icon(
                            Icons.arrow_back_ios_rounded,
                            color: Color(0xFFF06321),
                            size: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return Container(
                width: 100.0,
                height: double.infinity,
                child: Stack(
                  children: [
                    Container(
                      width: 80.0,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 0.0, 20.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/ICICI_SVG_1.jpg',
                                  width: 50.0,
                                  height: 50.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    2.0, 0.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        FFAppState().PendingRequests = true;
                                        FFAppState().UpiHost = false;
                                        FFAppState().UpiSms = false;
                                        FFAppState().SYS = false;
                                        FFAppState().UpiComplaint = false;
                                        FFAppState().UpiCountry = false;
                                        FFAppState().UpiSource = false;
                                        FFAppState().UpiFrm = false;
                                        FFAppState().UpiTransaction = false;
                                        safeSetState(() {});
                                        FFAppState().selectedSidebar = '1';
                                        FFAppState().update(() {});

                                        context.pushNamed(
                                          DashboardScreenWidget.routeName,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                            ),
                                          },
                                        );
                                      },
                                      child: Container(
                                        width: 50.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: FFAppState().selectedSidebar ==
                                                  '1'
                                              ? Color(0xFFFFE3CA)
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Icon(
                                          Icons.hourglass_bottom_rounded,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        FFAppState().PendingRequests = false;
                                        FFAppState().UpiHost = true;
                                        FFAppState().UpiSms = false;
                                        FFAppState().SYS = false;
                                        FFAppState().UpiComplaint = false;
                                        FFAppState().UpiCountry = false;
                                        FFAppState().UpiSource = false;
                                        FFAppState().UpiFrm = false;
                                        FFAppState().UpiTransaction = false;
                                        safeSetState(() {});
                                        FFAppState().selectedSidebar = '2';
                                        FFAppState().update(() {});

                                        context.pushNamed(
                                          DashboardScreenWidget.routeName,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                            ),
                                          },
                                        );
                                      },
                                      child: Container(
                                        width: 50.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: FFAppState().selectedSidebar ==
                                                  '2'
                                              ? Color(0xFFFFE3CA)
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Icon(
                                          Icons.storage_rounded,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        FFAppState().PendingRequests = false;
                                        FFAppState().UpiHost = false;
                                        FFAppState().UpiSms = false;
                                        FFAppState().SYS = true;
                                        FFAppState().UpiComplaint = false;
                                        FFAppState().UpiCountry = false;
                                        FFAppState().UpiSource = false;
                                        FFAppState().UpiFrm = false;
                                        FFAppState().UpiTransaction = false;
                                        safeSetState(() {});
                                        FFAppState().selectedSidebar = '3';
                                        FFAppState().update(() {});

                                        context.pushNamed(
                                          DashboardScreenWidget.routeName,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                            ),
                                          },
                                        );
                                      },
                                      child: Container(
                                        width: 50.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: FFAppState().selectedSidebar ==
                                                  '3'
                                              ? Color(0xFFFFE3CA)
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Icon(
                                          Icons.laptop,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.upiComplaint = true;
                                        _model.pendingRequests = false;
                                        _model.upiHost = false;
                                        _model.upiSms = false;
                                        _model.sys = false;
                                        _model.upiCountry = false;
                                        _model.upiSource = false;
                                        _model.upiFrm = false;
                                        _model.upiTransaction = false;
                                        _model.upiBank = false;
                                        _model.upiInteroperable = false;
                                        _model.upiSourceSub = false;
                                        safeSetState(() {});
                                        FFAppState().selectedSidebar = '4';
                                        FFAppState().update(() {});

                                        context.pushNamed(
                                            DashboardScreenWidget.routeName);
                                      },
                                      child: Container(
                                        width: 50.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: FFAppState().selectedSidebar ==
                                                  '4'
                                              ? Color(0xFFFFE3CA)
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Icon(
                                          Icons.info_outline_rounded,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.upiCountry = true;
                                        _model.pendingRequests = false;
                                        _model.upiHost = false;
                                        _model.upiSms = false;
                                        _model.sys = false;
                                        _model.upiComplaint = false;
                                        _model.upiSource = false;
                                        _model.upiFrm = false;
                                        _model.upiTransaction = false;
                                        _model.upiBank = false;
                                        _model.upiInteroperable = false;
                                        _model.upiSourceSub = false;
                                        safeSetState(() {});
                                        FFAppState().selectedSidebar = '5';
                                        safeSetState(() {});

                                        context.pushNamed(
                                            DashboardScreenWidget.routeName);
                                      },
                                      child: Container(
                                        width: 50.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: FFAppState().selectedSidebar ==
                                                  '5'
                                              ? Color(0xFFFFE3CA)
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: FaIcon(
                                          FontAwesomeIcons.globe,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.upiSms = true;
                                        _model.pendingRequests = false;
                                        _model.upiHost = false;
                                        _model.sys = false;
                                        _model.upiComplaint = false;
                                        _model.upiCountry = false;
                                        _model.upiSource = false;
                                        _model.upiFrm = false;
                                        _model.upiTransaction = false;
                                        safeSetState(() {});
                                        FFAppState().selectedSidebar = '6';
                                        safeSetState(() {});

                                        context.pushNamed(
                                            DashboardScreenWidget.routeName);
                                      },
                                      child: Container(
                                        width: 50.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: FFAppState().selectedSidebar ==
                                                  '6'
                                              ? Color(0xFFFFE3CA)
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Icon(
                                          Icons.sms_outlined,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.upiSource = false;
                                        _model.pendingRequests = false;
                                        _model.upiHost = false;
                                        _model.upiSms = false;
                                        _model.sys = false;
                                        _model.upiComplaint = false;
                                        _model.upiCountry = false;
                                        _model.upiFrm = false;
                                        _model.upiTransaction = false;
                                        _model.upiSourceSub = true;
                                        _model.upiBank = false;
                                        _model.upiInteroperable = false;
                                        safeSetState(() {});
                                        FFAppState().selectedSidebar = '7';
                                        safeSetState(() {});

                                        context.pushNamed(
                                            DashboardScreenWidget.routeName);
                                      },
                                      child: Container(
                                        width: 50.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: FFAppState().selectedSidebar ==
                                                  '7'
                                              ? Color(0xFFFFE3CA)
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Icon(
                                          Icons.auto_awesome_motion_outlined,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.upiFrm = true;
                                        _model.pendingRequests = false;
                                        _model.upiHost = false;
                                        _model.upiSms = false;
                                        _model.sys = false;
                                        _model.upiComplaint = false;
                                        _model.upiCountry = false;
                                        _model.upiSource = false;
                                        _model.upiTransaction = false;
                                        safeSetState(() {});
                                        FFAppState().selectedSidebar = '8';
                                        safeSetState(() {});

                                        context.pushNamed(
                                            DashboardScreenWidget.routeName);
                                      },
                                      child: Container(
                                        width: 50.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: FFAppState().selectedSidebar ==
                                                  '8'
                                              ? Color(0xFFFFE3CA)
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Icon(
                                          Icons.curtains_closed_outlined,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.upiTransaction = true;
                                        _model.pendingRequests = false;
                                        _model.upiHost = false;
                                        _model.upiSms = false;
                                        _model.sys = false;
                                        _model.upiComplaint = false;
                                        _model.upiCountry = false;
                                        _model.upiSource = false;
                                        _model.upiFrm = false;
                                        _model.upiBank = false;
                                        _model.upiInteroperable = false;
                                        _model.upiSourceSub = false;
                                        safeSetState(() {});
                                        FFAppState().selectedSidebar = '9';
                                        safeSetState(() {});

                                        context.pushNamed(
                                            DashboardScreenWidget.routeName);
                                      },
                                      child: Container(
                                        width: 50.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: FFAppState().selectedSidebar ==
                                                  '9'
                                              ? Color(0xFFFFE3CA)
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Icon(
                                          Icons.money_rounded,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.upiTransaction = false;
                                        _model.pendingRequests = false;
                                        _model.upiHost = false;
                                        _model.upiSms = false;
                                        _model.sys = false;
                                        _model.upiComplaint = false;
                                        _model.upiCountry = false;
                                        _model.upiSource = false;
                                        _model.upiFrm = false;
                                        _model.upiBank = true;
                                        _model.upiInteroperable = false;
                                        _model.upiSourceSub = false;
                                        safeSetState(() {});
                                        FFAppState().selectedSidebar = '10';
                                        safeSetState(() {});

                                        context.pushNamed(
                                            DashboardScreenWidget.routeName);
                                      },
                                      child: Container(
                                        width: 50.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: FFAppState().selectedSidebar ==
                                                  '10'
                                              ? Color(0xFFFFE3CA)
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.landmark,
                                            size: 24.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.upiTransaction = false;
                                        _model.pendingRequests = false;
                                        _model.upiHost = false;
                                        _model.upiSms = false;
                                        _model.sys = false;
                                        _model.upiComplaint = false;
                                        _model.upiCountry = false;
                                        _model.upiSource = true;
                                        _model.upiFrm = false;
                                        _model.upiBank = false;
                                        _model.upiInteroperable = false;
                                        _model.upiSourceSub = false;
                                        safeSetState(() {});
                                        FFAppState().selectedSidebar = '11';
                                        safeSetState(() {});

                                        context.pushNamed(
                                            DashboardScreenWidget.routeName);
                                      },
                                      child: Container(
                                        width: 50.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: FFAppState().selectedSidebar ==
                                                  '11'
                                              ? Color(0xFFFFE3CA)
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Icon(
                                          Icons.source_outlined,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.upiTransaction = false;
                                        _model.pendingRequests = false;
                                        _model.upiHost = false;
                                        _model.upiSms = false;
                                        _model.sys = false;
                                        _model.upiComplaint = false;
                                        _model.upiCountry = false;
                                        _model.upiSource = false;
                                        _model.upiFrm = false;
                                        _model.upiBank = false;
                                        _model.upiInteroperable = true;
                                        _model.upiSourceSub = false;
                                        safeSetState(() {});
                                        FFAppState().selectedSidebar = '12';
                                        safeSetState(() {});

                                        context.pushNamed(
                                            DashboardScreenWidget.routeName);
                                      },
                                      child: Container(
                                        width: 50.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: FFAppState().selectedSidebar ==
                                                  '12'
                                              ? Color(0xFFFFE3CA)
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Icon(
                                          Icons.bar_chart_sharp,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 5.0)),
                                ),
                              ),
                              SizedBox(
                                width: 230.0,
                                child: Divider(
                                  thickness: 2.0,
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                              ),
                              Builder(
                                builder: (context) => InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await showDialog(
                                      context: context,
                                      builder: (dialogContext) {
                                        return Dialog(
                                          elevation: 0,
                                          insetPadding: EdgeInsets.zero,
                                          backgroundColor: Colors.transparent,
                                          alignment: AlignmentDirectional(
                                                  0.0, 0.0)
                                              .resolve(
                                                  Directionality.of(context)),
                                          child: DeleteDialogWidget(
                                            messageBody:
                                                'Are you sure you want to log out?',
                                            actionCallback: () async {
                                              _model.apiResulttjt =
                                                  await LogoutCall.call();

                                              if ((_model.apiResulttjt
                                                      ?.succeeded ??
                                                  true)) {
                                                FFAppState().token = '';
                                                FFAppState().deviceHash = '';
                                                FFAppState().userid = '';
                                                safeSetState(() {});
                                                await actions.clearSession();
                                                await Future.delayed(
                                                  Duration(
                                                    milliseconds: 650,
                                                  ),
                                                );
                                                Navigator.pop(context);

                                                context.goNamed(
                                                    LoginpageWidget.routeName);
                                              }
                                            },
                                          ),
                                        );
                                      },
                                    );

                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    width: 50.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Icon(
                                      Icons.logout_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(height: 50.0)),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.79, 0.02),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          _model.hideExpansion = true;
                          _model.updatePage(() {});
                        },
                        child: Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(0xFFF06321),
                            ),
                          ),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFFF06321),
                            size: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ],
    );
  }
}
