import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
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

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return AlertDialog(
            title: Text(getJsonField(
              FFAppState().datatest,
              r'''$.accessSummary.accessByTable''',
            ).toString()),
            content: Text('ok'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(alertDialogContext),
                child: Text('Ok'),
              ),
            ],
          );
        },
      );
    });

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
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 213.0,
                              height: 50.0,
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
                                        await widget.pendingRequestsNav?.call();
                                        _model.pendingRequests = true;
                                        _model.upiHost = false;
                                        _model.upiSms = false;
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

                                        context.goNamed(
                                          DashboardScreenWidget.routeName,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
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
                                        height: 45.0,
                                        decoration: BoxDecoration(
                                          color: FFAppState().selectedSidebar ==
                                                  '1'
                                              ? FlutterFlowTheme.of(context)
                                                  .slideBarTabBG
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
                                                Icons.hourglass_bottom_rounded,
                                                size: 22.0,
                                              ),
                                              Text(
                                                'Pending requests',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ].divide(SizedBox(width: 10.0)),
                                          ),
                                        ),
                                      ),
                                    ),
                                    if (functions.checkTableIdMatch(
                                        getJsonField(
                                          FFAppState().datatest,
                                          r'''$.accessSummary.accessByTable''',
                                          true,
                                        )!,
                                        '1'))
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.upiHost = true;
                                          _model.pendingRequests = false;
                                          _model.upiSms = false;
                                          _model.sys = false;
                                          _model.upiComplaint = false;
                                          _model.upiCountry = false;
                                          _model.upiSource = false;
                                          _model.upiFrm = false;
                                          _model.upiTransaction = false;
                                          _model.upiBank = false;
                                          _model.upiInteroperable = false;
                                          _model.upiSourceSub = false;
                                          _model.updatePage(() {});
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
                                          FFAppState().isInitialSearch = false;
                                          FFAppState().update(() {});
                                          await widget.pendingRequestsNav
                                              ?.call();

                                          context.goNamed(
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
                                          height: 45.0,
                                          decoration: BoxDecoration(
                                            color: FFAppState()
                                                        .selectedSidebar ==
                                                    '2'
                                                ? FlutterFlowTheme.of(context)
                                                    .slideBarTabBG
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
                                                  size: 22.0,
                                                ),
                                                Text(
                                                  'UPI Host',
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Mulish',
                                                            color:
                                                                valueOrDefault<
                                                                    Color>(
                                                              FFAppState()
                                                                      .UpiHost
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .headingColor
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                            ),
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
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
                                        _model.sys = true;
                                        _model.pendingRequests = false;
                                        _model.upiHost = false;
                                        _model.upiSms = false;
                                        _model.upiComplaint = false;
                                        _model.upiCountry = false;
                                        _model.upiSource = false;
                                        _model.upiFrm = false;
                                        _model.upiTransaction = false;
                                        _model.upiBank = false;
                                        _model.upiInteroperable = false;
                                        _model.upiSourceSub = false;
                                        _model.updatePage(() {});
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
                                        FFAppState().isInitialSearch = false;
                                        FFAppState().update(() {});
                                        await widget.pendingRequestsNav?.call();

                                        context.goNamed(
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
                                        width: 245.0,
                                        height: 45.0,
                                        decoration: BoxDecoration(
                                          color: FFAppState().selectedSidebar ==
                                                  '3'
                                              ? FlutterFlowTheme.of(context)
                                                  .slideBarTabBG
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
                                                size: 22.0,
                                              ),
                                              Text(
                                                'SYS',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: valueOrDefault<
                                                              Color>(
                                                            FFAppState().SYS
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .headingColor
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                          ),
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
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
                                        _model.upiBank = false;
                                        _model.upiInteroperable = false;
                                        _model.upiSourceSub = false;
                                        safeSetState(() {});
                                        FFAppState().selectedSidebar = '4';
                                        FFAppState().UpiHost = false;
                                        FFAppState().SYS = false;
                                        FFAppState().isInitialSearch = false;
                                        safeSetState(() {});
                                        await widget.pendingRequestsNav?.call();

                                        context.goNamed(
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
                                        width: 245.0,
                                        height: 45.0,
                                        decoration: BoxDecoration(
                                          color: FFAppState().selectedSidebar ==
                                                  '4'
                                              ? FlutterFlowTheme.of(context)
                                                  .slideBarTabBG
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
                                                size: 22.0,
                                              ),
                                              Text(
                                                'UPI Complaint',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: valueOrDefault<
                                                              Color>(
                                                            _model.upiComplaint!
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .headingColor
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                          ),
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
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
                                        _model.upiBank = false;
                                        _model.upiInteroperable = false;
                                        _model.upiSourceSub = false;
                                        safeSetState(() {});
                                        FFAppState().selectedSidebar = '5';
                                        FFAppState().UpiHost = false;
                                        FFAppState().SYS = false;
                                        FFAppState().isInitialSearch = false;
                                        safeSetState(() {});
                                        await widget.pendingRequestsNav?.call();

                                        context.goNamed(
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
                                        width: 245.0,
                                        height: 45.0,
                                        decoration: BoxDecoration(
                                          color: FFAppState().selectedSidebar ==
                                                  '5'
                                              ? FlutterFlowTheme.of(context)
                                                  .slideBarTabBG
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
                                                size: 20.0,
                                              ),
                                              Text(
                                                'UPI Country',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: valueOrDefault<
                                                              Color>(
                                                            _model.upiCountry!
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .headingColor
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                          ),
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
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
                                        FFAppState().isInitialSearch = false;
                                        safeSetState(() {});
                                        await widget.pendingRequestsNav?.call();

                                        context.goNamed(
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
                                        width: 245.0,
                                        height: 45.0,
                                        decoration: BoxDecoration(
                                          color: FFAppState().selectedSidebar ==
                                                  '6'
                                              ? FlutterFlowTheme.of(context)
                                                  .slideBarTabBG
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
                                                size: 22.0,
                                              ),
                                              Text(
                                                'UPI SMS',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: valueOrDefault<
                                                              Color>(
                                                            _model.upiSms!
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .headingColor
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                          ),
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
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
                                        FFAppState().isInitialSearch = false;
                                        safeSetState(() {});
                                        await widget.pendingRequestsNav?.call();

                                        context.goNamed(
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
                                        width: 245.0,
                                        height: 45.0,
                                        decoration: BoxDecoration(
                                          color: FFAppState().selectedSidebar ==
                                                  '7'
                                              ? FlutterFlowTheme.of(context)
                                                  .slideBarTabBG
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
                                                size: 22.0,
                                              ),
                                              Text(
                                                'UPI Source Sub',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: valueOrDefault<
                                                              Color>(
                                                            _model.upiSourceSub!
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .headingColor
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                          ),
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
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
                                        _model.upiBank = false;
                                        _model.upiInteroperable = false;
                                        _model.upiSourceSub = false;
                                        safeSetState(() {});
                                        FFAppState().selectedSidebar = '8';
                                        FFAppState().SYS = false;
                                        FFAppState().UpiHost = false;
                                        FFAppState().isInitialSearch = false;
                                        safeSetState(() {});
                                        await widget.pendingRequestsNav?.call();

                                        context.goNamed(
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
                                        width: 245.0,
                                        height: 45.0,
                                        decoration: BoxDecoration(
                                          color: FFAppState().selectedSidebar ==
                                                  '8'
                                              ? FlutterFlowTheme.of(context)
                                                  .slideBarTabBG
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
                                                Icons.curtains_closed_outlined,
                                                size: 22.0,
                                              ),
                                              Text(
                                                'UPI FRM',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: valueOrDefault<
                                                              Color>(
                                                            _model.upiFrm
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .headingColor
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                          ),
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
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
                                        _model.upiBank = false;
                                        _model.upiInteroperable = false;
                                        _model.upiSourceSub = false;
                                        safeSetState(() {});
                                        FFAppState().selectedSidebar = '9';
                                        FFAppState().UpiHost = false;
                                        FFAppState().SYS = false;
                                        FFAppState().isInitialSearch = false;
                                        safeSetState(() {});
                                        await widget.pendingRequestsNav?.call();

                                        context.goNamed(
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
                                        width: 245.0,
                                        height: 45.0,
                                        decoration: BoxDecoration(
                                          color: FFAppState().selectedSidebar ==
                                                  '9'
                                              ? FlutterFlowTheme.of(context)
                                                  .slideBarTabBG
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
                                                size: 22.0,
                                              ),
                                              Text(
                                                'UPI Transaction',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: valueOrDefault<
                                                              Color>(
                                                            _model.upiTransaction!
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .headingColor
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                          ),
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
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
                                        FFAppState().isInitialSearch = false;
                                        safeSetState(() {});
                                        await widget.pendingRequestsNav?.call();

                                        context.goNamed(
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
                                        width: 245.0,
                                        height: 45.0,
                                        decoration: BoxDecoration(
                                          color: FFAppState().selectedSidebar ==
                                                  '10'
                                              ? FlutterFlowTheme.of(context)
                                                  .slideBarTabBG
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
                                                size: 20.0,
                                              ),
                                              Text(
                                                'UPI Bank',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: valueOrDefault<
                                                              Color>(
                                                            _model.upiBank!
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .headingColor
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                          ),
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
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
                                        FFAppState().isInitialSearch = false;
                                        safeSetState(() {});
                                        await widget.pendingRequestsNav?.call();

                                        context.goNamed(
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
                                        width: 245.0,
                                        height: 45.0,
                                        decoration: BoxDecoration(
                                          color: FFAppState().selectedSidebar ==
                                                  '11'
                                              ? FlutterFlowTheme.of(context)
                                                  .slideBarTabBG
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
                                                size: 22.0,
                                              ),
                                              Text(
                                                'UPI Source',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: valueOrDefault<
                                                              Color>(
                                                            _model.upiSource!
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .headingColor
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                          ),
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
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
                                        FFAppState().isInitialSearch = false;
                                        safeSetState(() {});
                                        await widget.pendingRequestsNav?.call();

                                        context.goNamed(
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
                                        width: 245.0,
                                        height: 45.0,
                                        decoration: BoxDecoration(
                                          color: FFAppState().selectedSidebar ==
                                                  '12'
                                              ? FlutterFlowTheme.of(context)
                                                  .slideBarTabBG
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
                                                size: 22.0,
                                              ),
                                              Text(
                                                'Interoperable',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: valueOrDefault<
                                                              Color>(
                                                            _model.upiInteroperable!
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .headingColor
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                          ),
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ].divide(SizedBox(width: 10.0)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ].divide(SizedBox(height: 20.0)),
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
                        child: Material(
                          color: Colors.transparent,
                          elevation: 3.0,
                          shape: const CircleBorder(),
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
                                      _model.pendingRequests = true;
                                      _model.upiHost = false;
                                      _model.upiSms = false;
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

                                      context.goNamed(
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
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 0.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Container(
                                        width: 50.0,
                                        height: 45.0,
                                        decoration: BoxDecoration(
                                          color: FFAppState().selectedSidebar ==
                                                  '1'
                                              ? FlutterFlowTheme.of(context)
                                                  .slideBarTabBG
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Icon(
                                          Icons.hourglass_bottom_rounded,
                                          size: 22.0,
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
                                      _model.upiHost = true;
                                      _model.pendingRequests = false;
                                      _model.upiSms = false;
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
                                      FFAppState().isInitialSearch = false;
                                      FFAppState().update(() {});
                                      await widget.pendingRequestsNav?.call();

                                      context.goNamed(
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
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 0.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Container(
                                        width: 50.0,
                                        height: 45.0,
                                        decoration: BoxDecoration(
                                          color: FFAppState().selectedSidebar ==
                                                  '2'
                                              ? FlutterFlowTheme.of(context)
                                                  .slideBarTabBG
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Icon(
                                          Icons.storage_rounded,
                                          size: 22.0,
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
                                      _model.sys = true;
                                      _model.pendingRequests = false;
                                      _model.upiHost = false;
                                      _model.upiSms = false;
                                      _model.upiComplaint = false;
                                      _model.upiCountry = false;
                                      _model.upiSource = false;
                                      _model.upiFrm = false;
                                      _model.upiTransaction = false;
                                      _model.upiBank = false;
                                      _model.upiInteroperable = false;
                                      _model.upiSourceSub = false;
                                      safeSetState(() {});
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
                                      FFAppState().isInitialSearch = false;
                                      FFAppState().update(() {});
                                      await widget.pendingRequestsNav?.call();

                                      context.goNamed(
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
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 0.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Container(
                                        width: 50.0,
                                        height: 45.0,
                                        decoration: BoxDecoration(
                                          color: FFAppState().selectedSidebar ==
                                                  '3'
                                              ? FlutterFlowTheme.of(context)
                                                  .slideBarTabBG
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Icon(
                                          Icons.laptop,
                                          size: 22.0,
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
                                      _model.upiBank = false;
                                      _model.upiInteroperable = false;
                                      _model.upiSourceSub = false;
                                      safeSetState(() {});
                                      FFAppState().selectedSidebar = '4';
                                      FFAppState().UpiHost = false;
                                      FFAppState().SYS = false;
                                      FFAppState().isInitialSearch = false;
                                      FFAppState().update(() {});
                                      await widget.pendingRequestsNav?.call();

                                      context.goNamed(
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
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 0.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Container(
                                        width: 50.0,
                                        height: 45.0,
                                        decoration: BoxDecoration(
                                          color: FFAppState().selectedSidebar ==
                                                  '4'
                                              ? FlutterFlowTheme.of(context)
                                                  .slideBarTabBG
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Icon(
                                          Icons.info_outline_rounded,
                                          size: 22.0,
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
                                      _model.upiBank = false;
                                      _model.upiInteroperable = false;
                                      _model.upiSourceSub = false;
                                      safeSetState(() {});
                                      FFAppState().selectedSidebar = '5';
                                      FFAppState().UpiHost = false;
                                      FFAppState().SYS = false;
                                      FFAppState().isInitialSearch = false;
                                      safeSetState(() {});
                                      await widget.pendingRequestsNav?.call();

                                      context.goNamed(
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
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 0.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Container(
                                        width: 50.0,
                                        height: 45.0,
                                        decoration: BoxDecoration(
                                          color: FFAppState().selectedSidebar ==
                                                  '5'
                                              ? FlutterFlowTheme.of(context)
                                                  .slideBarTabBG
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: FaIcon(
                                          FontAwesomeIcons.globe,
                                          size: 22.0,
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
                                      FFAppState().isInitialSearch = false;
                                      safeSetState(() {});
                                      await widget.pendingRequestsNav?.call();

                                      context.goNamed(
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
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 0.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Container(
                                        width: 50.0,
                                        height: 45.0,
                                        decoration: BoxDecoration(
                                          color: FFAppState().selectedSidebar ==
                                                  '6'
                                              ? FlutterFlowTheme.of(context)
                                                  .slideBarTabBG
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Icon(
                                          Icons.sms_outlined,
                                          size: 22.0,
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
                                      FFAppState().isInitialSearch = false;
                                      safeSetState(() {});
                                      await widget.pendingRequestsNav?.call();

                                      context.goNamed(
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
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 0.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Container(
                                        width: 50.0,
                                        height: 45.0,
                                        decoration: BoxDecoration(
                                          color: FFAppState().selectedSidebar ==
                                                  '7'
                                              ? FlutterFlowTheme.of(context)
                                                  .slideBarTabBG
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Icon(
                                          Icons.auto_awesome_motion_outlined,
                                          size: 22.0,
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
                                      FFAppState().UpiHost = false;
                                      FFAppState().SYS = false;
                                      FFAppState().isInitialSearch = false;
                                      safeSetState(() {});
                                      await widget.pendingRequestsNav?.call();

                                      context.goNamed(
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
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 0.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Container(
                                        width: 50.0,
                                        height: 45.0,
                                        decoration: BoxDecoration(
                                          color: FFAppState().selectedSidebar ==
                                                  '8'
                                              ? FlutterFlowTheme.of(context)
                                                  .slideBarTabBG
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Icon(
                                          Icons.curtains_closed_outlined,
                                          size: 22.0,
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
                                      _model.upiBank = false;
                                      _model.upiInteroperable = false;
                                      _model.upiSourceSub = false;
                                      safeSetState(() {});
                                      FFAppState().selectedSidebar = '9';
                                      FFAppState().UpiHost = false;
                                      FFAppState().SYS = false;
                                      FFAppState().isInitialSearch = false;
                                      safeSetState(() {});
                                      await widget.pendingRequestsNav?.call();

                                      context.goNamed(
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
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 0.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Container(
                                        width: 50.0,
                                        height: 45.0,
                                        decoration: BoxDecoration(
                                          color: FFAppState().selectedSidebar ==
                                                  '9'
                                              ? FlutterFlowTheme.of(context)
                                                  .slideBarTabBG
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Icon(
                                          Icons.money_rounded,
                                          size: 22.0,
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
                                      FFAppState().isInitialSearch = false;
                                      safeSetState(() {});
                                      await widget.pendingRequestsNav?.call();

                                      context.goNamed(
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
                                      height: 45.0,
                                      decoration: BoxDecoration(
                                        color:
                                            FFAppState().selectedSidebar == '10'
                                                ? FlutterFlowTheme.of(context)
                                                    .slideBarTabBG
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
                                          size: 22.0,
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
                                      FFAppState().isInitialSearch = false;
                                      safeSetState(() {});
                                      await widget.pendingRequestsNav?.call();

                                      context.goNamed(
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
                                      height: 45.0,
                                      decoration: BoxDecoration(
                                        color:
                                            FFAppState().selectedSidebar == '11'
                                                ? FlutterFlowTheme.of(context)
                                                    .slideBarTabBG
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Icon(
                                        Icons.source_outlined,
                                        size: 22.0,
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
                                      FFAppState().isInitialSearch = false;
                                      safeSetState(() {});
                                      await widget.pendingRequestsNav?.call();

                                      context.goNamed(
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
                                      height: 45.0,
                                      decoration: BoxDecoration(
                                        color:
                                            FFAppState().selectedSidebar == '12'
                                                ? FlutterFlowTheme.of(context)
                                                    .slideBarTabBG
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Icon(
                                        Icons.bar_chart_sharp,
                                        size: 22.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ].divide(SizedBox(height: 20.0)),
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
                              color: FlutterFlowTheme.of(context).headingColor,
                            ),
                          ),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: FlutterFlowTheme.of(context).headingColor,
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
