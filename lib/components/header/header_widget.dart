import '/backend/api_requests/api_calls.dart';
import '/components/delete_dialog_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'header_model.dart';
export 'header_model.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  late HeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeaderModel());

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
      width: double.infinity,
      height: 66.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(30.0, 10.0, 30.0, 10.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 180.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                image: DecorationImage(
                  fit: BoxFit.scaleDown,
                  image: Image.asset(
                    'assets/images/UPI-Logo-vector.svg_1.jpg',
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
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Last login :',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Mulish',
                                  color:
                                      FlutterFlowTheme.of(context).headingColor,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          TextSpan(
                            text: valueOrDefault<String>(
                              (String var1) {
                                return var1 = var1.split(' ')[0];
                              }(FFAppState().lastLogin),
                              '0000-00-00 00:00:00',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Mulish',
                                  color:
                                      FlutterFlowTheme.of(context).headingColor,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Mulish',
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                      child: VerticalDivider(
                        thickness: 2.0,
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                    ),
                    RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Time :',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Mulish',
                                  color:
                                      FlutterFlowTheme.of(context).headingColor,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          TextSpan(
                            text: valueOrDefault<String>(
                              (String var1) {
                                return var1 = var1.split(' ')[1];
                              }(FFAppState().lastLogin),
                              '0000-00-00 00:00:00',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Mulish',
                                  color:
                                      FlutterFlowTheme.of(context).headingColor,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Mulish',
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ].divide(SizedBox(width: 10.0)),
                ),
                SizedBox(
                  height: 30.0,
                  child: VerticalDivider(
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
                            alignment: AlignmentDirectional(0.0, 0.0)
                                .resolve(Directionality.of(context)),
                            child: DeleteDialogWidget(
                              messageBody: 'Are you sure you want to logout?',
                              actionCallback: () async {
                                _model.logoutVariable = await LogoutCall.call();

                                if ((_model.logoutVariable?.succeeded ??
                                    true)) {
                                  FFAppState().token = '';
                                  FFAppState().deviceHash = '';
                                  FFAppState().userid = '';
                                  FFAppState().selectedSidebar = '1';
                                  Navigator.pop(context);
                                } else {
                                  FFAppState().token = '';
                                  FFAppState().deviceHash = '';
                                  FFAppState().userid = '';
                                  FFAppState().selectedSidebar = '1';
                                  Navigator.pop(context);
                                }

                                context.goNamed(
                                  LoginpageWidget.routeName,
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                    ),
                                  },
                                );
                              },
                            ),
                          );
                        },
                      );

                      safeSetState(() {});
                    },
                    child: Material(
                      color: Colors.transparent,
                      elevation: 0.1,
                      shape: const CircleBorder(),
                      child: Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFE3CA),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.logout_sharp,
                          color: FlutterFlowTheme.of(context).headingColor,
                          size: 24.0,
                        ),
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
                    FFAppState().isUserInfo =
                        !(FFAppState().isUserInfo ?? true);
                    _model.updatePage(() {});
                  },
                  child: Material(
                    color: Colors.transparent,
                    elevation: 0.1,
                    shape: const CircleBorder(),
                    child: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFE3CA),
                        shape: BoxShape.circle,
                      ),
                      child: Builder(
                        builder: (context) {
                          if (FFAppState().isUserInfo == false) {
                            return Icon(
                              Icons.person_outline_sharp,
                              color: FlutterFlowTheme.of(context).headingColor,
                              size: 24.0,
                            );
                          } else {
                            return Icon(
                              Icons.close_sharp,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 24.0,
                            );
                          }
                        },
                      ),
                    ),
                  ),
                ),
              ].divide(SizedBox(width: 30.0)),
            ),
          ],
        ),
      ),
    );
  }
}
