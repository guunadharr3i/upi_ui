import '/components/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/components/new_sidebar/new_sidebar_widget.dart';
import '/components/pending_request_widget.dart';
import '/components/upi_comp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'dashboard_screen_model.dart';
export 'dashboard_screen_model.dart';

class DashboardScreenWidget extends StatefulWidget {
  const DashboardScreenWidget({super.key});

  static String routeName = 'DashboardScreen';
  static String routePath = '/dashboardScreen';

  @override
  State<DashboardScreenWidget> createState() => _DashboardScreenWidgetState();
}

class _DashboardScreenWidgetState extends State<DashboardScreenWidget> {
  late DashboardScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardScreenModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {});

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.9,
                    decoration: BoxDecoration(),
                    child: wrapWithModel(
                      model: _model.newSidebarModel,
                      updateCallback: () => safeSetState(() {}),
                      child: NewSidebarWidget(
                        pendingRequestsNav: () async {
                          safeSetState(() {
                            _model.upiCompModel.searchCompModel.textController
                                ?.clear();
                          });
                          safeSetState(() {
                            _model.upiCompModel.searchCompModel.textController
                                ?.text = FFAppState().searchVal;
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: MediaQuery.sizeOf(context).height * 0.9,
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(),
                                child: wrapWithModel(
                                  model: _model.headerModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: HeaderWidget(),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (FFAppState().selectedSidebar == '1')
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 15.0, 0.0),
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        child: wrapWithModel(
                                          model: _model.pendingRequestModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: PendingRequestWidget(
                                            parameter1:
                                                FFAppState().selectedSidebar,
                                          ),
                                        ),
                                      ),
                                    ),
                                  if (FFAppState().selectedSidebar != '1')
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 15.0, 0.0),
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        child: wrapWithModel(
                                          model: _model.upiCompModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: UpiCompWidget(
                                            sidebarSelected:
                                                FFAppState().selectedSidebar,
                                          ),
                                        ),
                                      ),
                                    ),
                                ].divide(SizedBox(height: 20.0)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: wrapWithModel(
                  model: _model.footerModel,
                  updateCallback: () => safeSetState(() {}),
                  child: FooterWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
