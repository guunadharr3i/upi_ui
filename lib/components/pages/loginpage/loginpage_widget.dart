import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/error_message_dialog_widget.dart';
import '/components/loading_indicator_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'loginpage_model.dart';
export 'loginpage_model.dart';

class LoginpageWidget extends StatefulWidget {
  const LoginpageWidget({super.key});

  static String routeName = 'loginpage';
  static String routePath = '/loginpage';

  @override
  State<LoginpageWidget> createState() => _LoginpageWidgetState();
}

class _LoginpageWidgetState extends State<LoginpageWidget>
    with TickerProviderStateMixin {
  late LoginpageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginpageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.wait([
        Future(() async {}),
        Future(() async {
          _model.res = await actions.faceUserCheck();
          if (_model.res!.isLoggedIn) {
            FFAppState().userid = _model.res!.userId;
            safeSetState(() {});

            context.goNamed(DashboardScreenWidget.routeName);
          } else {
            _model.hashval = await actions.generateWebDeviceHashWithTime();
            FFAppState().deviceHash = _model.hashval!;
            safeSetState(() {});
          }
        }),
      ]);
    });

    _model.userNameTextController ??= TextEditingController();
    _model.userNameFocusNode ??= FocusNode();

    _model.passwordTextController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();

    animationsMap.addAll({
      'columnOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: Offset(0.0, 140.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: Offset(0.9, 1.0),
            end: Offset(1.0, 1.0),
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: Offset(-0.349, 0),
            end: Offset(0, 0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 500.0.ms,
            duration: 500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 500.0.ms,
            duration: 500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'columnOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 500.0.ms,
            duration: 500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'buttonOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 500.0.ms,
            duration: 500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

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
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/ICICI_Wallpaper1.png',
                  ).image,
                ),
              ),
              child: Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(70.0, 0.0, 0.0, 0.0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 9.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.37,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: Colors.transparent,
                              width: 2.0,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 30.0, 0.0, 30.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(),
                                  child: Visibility(
                                    visible: responsiveVisibility(
                                      context: context,
                                      desktop: false,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          30.0, 20.0, 30.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: SvgPicture.network(
                                          'https://storage.googleapis.com/flutterflow-enterprise-india.appspot.com/teams/iB7HUxUy5HzlG1AwjKQM/assets/ezxuh9f6lhro/ICICI_Bank_Logo_Digital_1.svg',
                                          width: 300.0,
                                          height: 60.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'containerOnPageLoadAnimation']!),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      36.0, 10.0, 36.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Builder(
                                        builder: (context) => InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            _model.resposnevalidCopy2 = true;
                                            if (_model.formKey.currentState ==
                                                    null ||
                                                !_model.formKey.currentState!
                                                    .validate()) {
                                              safeSetState(() => _model
                                                  .resposnevalidCopy2 = false);
                                              return;
                                            }
                                            if (_model.resposnevalidCopy2!) {
                                              _model.ldapResCopy2 =
                                                  await UpiAPIGroup.lDAPAuthCall
                                                      .call(
                                                userName: _model
                                                    .userNameTextController
                                                    .text,
                                                password: _model
                                                    .passwordTextController
                                                    .text,
                                                deviceHase:
                                                    FFAppState().deviceHash,
                                                roleName: 'support',
                                              );

                                              if ((_model.ldapResCopy2
                                                          ?.statusCode ??
                                                      200) ==
                                                  200) {
                                                FFAppState().userid = _model
                                                    .userNameTextController
                                                    .text;
                                                FFAppState().token =
                                                    getJsonField(
                                                  (_model.ldapResCopy2
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.token''',
                                                ).toString();
                                                FFAppState().userDataAccess =
                                                    (getJsonField(
                                                  (_model.ldapResCopy2
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.accessSummary.accessByTable''',
                                                  true,
                                                )!
                                                                .toList()
                                                                .map<AccessByTableStruct?>(
                                                                    AccessByTableStruct
                                                                        .maybeFromMap)
                                                                .toList()
                                                            as Iterable<
                                                                AccessByTableStruct?>)
                                                        .withoutNulls
                                                        .toList()
                                                        .cast<
                                                            AccessByTableStruct>();
                                                FFAppState().lastLogin =
                                                    getJsonField(
                                                  (_model.ldapResCopy2
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.lastLogIn''',
                                                ).toString();
                                                safeSetState(() {});

                                                context.goNamed(
                                                    DashboardScreenWidget
                                                        .routeName);
                                              } else {
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
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          FocusScope.of(
                                                                  dialogContext)
                                                              .unfocus();
                                                          FocusManager.instance
                                                              .primaryFocus
                                                              ?.unfocus();
                                                        },
                                                        child:
                                                            ErrorMessageDialogWidget(
                                                          errorMessageBody:
                                                              'Please try again',
                                                          titleValue:
                                                              'AUTHENTICATION FAILED',
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              }
                                            }

                                            safeSetState(() {});
                                          },
                                          child: Text(
                                            'Welcome to UPI ',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .displaySmall
                                                .override(
                                                  font: GoogleFonts.openSans(
                                                    fontWeight: FontWeight.w800,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .displaySmall
                                                            .fontStyle,
                                                  ),
                                                  color: Color(0xEB041629),
                                                  fontSize: 25.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w800,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .displaySmall
                                                          .fontStyle,
                                                ),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'textOnPageLoadAnimation']!),
                                      ),
                                      Form(
                                        key: _model.formKey,
                                        autovalidateMode:
                                            AutovalidateMode.disabled,
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 10.0, 20.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller: _model
                                                      .userNameTextController,
                                                  focusNode:
                                                      _model.userNameFocusNode,
                                                  autofocus: false,
                                                  textCapitalization:
                                                      TextCapitalization
                                                          .characters,
                                                  textInputAction:
                                                      TextInputAction.next,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color:
                                                              Color(0xEB041629),
                                                          letterSpacing: 0.0,
                                                        ),
                                                    hintText: 'User ID',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color:
                                                              Color(0xEB041629),
                                                          letterSpacing: 0.0,
                                                          lineHeight: 1.2,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFFCBD5E0),
                                                        width: 1.2,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.2,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.2,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.2,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        Color(0xFFF7FAFC),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        color:
                                                            Color(0xEB041629),
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        lineHeight: 1.2,
                                                      ),
                                                  maxLength: 9,
                                                  buildCounter: (context,
                                                          {required currentLength,
                                                          required isFocused,
                                                          maxLength}) =>
                                                      null,
                                                  cursorColor:
                                                      Color(0xEB041629),
                                                  validator: _model
                                                      .userNameTextControllerValidator
                                                      .asValidator(context),
                                                  inputFormatters: [
                                                    if (!isAndroid && !isiOS)
                                                      TextInputFormatter
                                                          .withFunction(
                                                              (oldValue,
                                                                  newValue) {
                                                        return TextEditingValue(
                                                          selection: newValue
                                                              .selection,
                                                          text: newValue.text
                                                              .toCapitalization(
                                                                  TextCapitalization
                                                                      .characters),
                                                        );
                                                      }),
                                                  ],
                                                ),
                                              ),
                                              Builder(
                                                builder: (context) => Container(
                                                  width: double.infinity,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .passwordTextController,
                                                    focusNode: _model
                                                        .passwordFocusNode,
                                                    onFieldSubmitted:
                                                        (_) async {
                                                      _model.resposnevalidCopy =
                                                          true;
                                                      if (_model.formKey
                                                                  .currentState ==
                                                              null ||
                                                          !_model.formKey
                                                              .currentState!
                                                              .validate()) {
                                                        safeSetState(() => _model
                                                                .resposnevalidCopy =
                                                            false);
                                                        return;
                                                      }
                                                      if (_model
                                                          .resposnevalidCopy!) {
                                                        _model.ldapResCopy =
                                                            await UpiAPIGroup
                                                                .lDAPAuthCall
                                                                .call(
                                                          userName: _model
                                                              .userNameTextController
                                                              .text,
                                                          password: _model
                                                              .passwordTextController
                                                              .text,
                                                          deviceHase:
                                                              FFAppState()
                                                                  .deviceHash,
                                                          roleName: 'support',
                                                        );

                                                        if ((_model.ldapResCopy
                                                                    ?.statusCode ??
                                                                200) ==
                                                            200) {
                                                          FFAppState().userid =
                                                              _model
                                                                  .userNameTextController
                                                                  .text;
                                                          FFAppState().token =
                                                              getJsonField(
                                                            (_model.ldapResCopy
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.token''',
                                                          ).toString();
                                                          FFAppState()
                                                                  .userDataAccess =
                                                              (getJsonField(
                                                            (_model.ldapResCopy
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.accessSummary.accessByTable''',
                                                            true,
                                                          )!
                                                                          .toList()
                                                                          .map<AccessByTableStruct?>(AccessByTableStruct
                                                                              .maybeFromMap)
                                                                          .toList()
                                                                      as Iterable<
                                                                          AccessByTableStruct?>)
                                                                  .withoutNulls
                                                                  .toList()
                                                                  .cast<
                                                                      AccessByTableStruct>();
                                                          safeSetState(() {});
                                                          await actions
                                                              .loadAndStartFaceID(
                                                            context,
                                                            functions.addEmail(
                                                                _model
                                                                    .userNameTextController
                                                                    .text),
                                                            FFDevEnvironmentValues()
                                                                .applicationId,
                                                            FFDevEnvironmentValues()
                                                                .applicationSecret,
                                                            FFDevEnvironmentValues()
                                                                .initializeFaceIDURL,
                                                            FFDevEnvironmentValues()
                                                                .validateFaceIDURL,
                                                            FFDevEnvironmentValues()
                                                                .srURL,
                                                            FFDevEnvironmentValues()
                                                                .erURL,
                                                            FFDevEnvironmentValues()
                                                                .apiKey,
                                                          );
                                                        } else {
                                                          await showDialog(
                                                            context: context,
                                                            builder:
                                                                (dialogContext) {
                                                              return Dialog(
                                                                elevation: 0,
                                                                insetPadding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                alignment: AlignmentDirectional(
                                                                        0.0,
                                                                        0.0)
                                                                    .resolve(
                                                                        Directionality.of(
                                                                            context)),
                                                                child:
                                                                    GestureDetector(
                                                                  onTap: () {
                                                                    FocusScope.of(
                                                                            dialogContext)
                                                                        .unfocus();
                                                                    FocusManager
                                                                        .instance
                                                                        .primaryFocus
                                                                        ?.unfocus();
                                                                  },
                                                                  child:
                                                                      ErrorMessageDialogWidget(
                                                                    errorMessageBody:
                                                                        'Please try again',
                                                                    titleValue:
                                                                        'AUTHENTICATION FAILED',
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          );
                                                        }
                                                      }

                                                      safeSetState(() {});
                                                    },
                                                    autofocus: false,
                                                    textInputAction:
                                                        TextInputAction.go,
                                                    obscureText: !_model
                                                        .passwordVisibility,
                                                    decoration: InputDecoration(
                                                      isDense: true,
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Mulish',
                                                                color: Color(
                                                                    0xEB041629),
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintText: 'Password',
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Mulish',
                                                                color: Color(
                                                                    0xEB041629),
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFFCBD5E0),
                                                          width: 1.2,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.2,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 1.2,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 1.2,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                          Color(0xFFF7FAFC),
                                                      suffixIcon: InkWell(
                                                        onTap: () =>
                                                            safeSetState(
                                                          () => _model
                                                                  .passwordVisibility =
                                                              !_model
                                                                  .passwordVisibility,
                                                        ),
                                                        focusNode: FocusNode(
                                                            skipTraversal:
                                                                true),
                                                        child: Icon(
                                                          _model.passwordVisibility
                                                              ? Icons
                                                                  .visibility_outlined
                                                              : Icons
                                                                  .visibility_off_outlined,
                                                          color:
                                                              Color(0xEB041629),
                                                          size: 22,
                                                        ),
                                                      ),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color:
                                                              Color(0xEB041629),
                                                          letterSpacing: 0.0,
                                                          lineHeight: 1.2,
                                                        ),
                                                    cursorColor:
                                                        Color(0xEB041629),
                                                    validator: _model
                                                        .passwordTextControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 15.0)),
                                          ).animateOnPageLoad(animationsMap[
                                              'columnOnPageLoadAnimation2']!),
                                        ),
                                      ),
                                      Builder(
                                        builder: (context) {
                                          if (!_model.isLoading) {
                                            return Builder(
                                              builder: (context) => Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 10.0, 20.0, 20.0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    _model.resposnevalid = true;
                                                    if (_model.formKey
                                                                .currentState ==
                                                            null ||
                                                        !_model.formKey
                                                            .currentState!
                                                            .validate()) {
                                                      safeSetState(() =>
                                                          _model.resposnevalid =
                                                              false);
                                                      return;
                                                    }
                                                    if (_model.resposnevalid!) {
                                                      _model.ldapRes =
                                                          await UpiAPIGroup
                                                              .lDAPAuthCall
                                                              .call(
                                                        userName: _model
                                                            .userNameTextController
                                                            .text,
                                                        password: _model
                                                            .passwordTextController
                                                            .text,
                                                        deviceHase: FFAppState()
                                                            .deviceHash,
                                                        roleName: 'support',
                                                      );

                                                      if ((_model.ldapRes
                                                                  ?.statusCode ??
                                                              200) ==
                                                          200) {
                                                        FFAppState().userid = _model
                                                            .userNameTextController
                                                            .text;
                                                        FFAppState().token =
                                                            getJsonField(
                                                          (_model.ldapRes
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.token''',
                                                        ).toString();
                                                        FFAppState()
                                                                .userDataAccess =
                                                            (getJsonField(
                                                          (_model.ldapRes
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.accessSummary.accessByTable''',
                                                          true,
                                                        )!
                                                                        .toList()
                                                                        .map<AccessByTableStruct?>(AccessByTableStruct
                                                                            .maybeFromMap)
                                                                        .toList()
                                                                    as Iterable<
                                                                        AccessByTableStruct?>)
                                                                .withoutNulls
                                                                .toList()
                                                                .cast<
                                                                    AccessByTableStruct>();
                                                        FFAppState().lastLogin =
                                                            getJsonField(
                                                          (_model.ldapRes
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.lastLogIn''',
                                                        ).toString();
                                                        safeSetState(() {});
                                                        await actions
                                                            .loadAndStartFaceID(
                                                          context,
                                                          functions.addEmail(_model
                                                              .userNameTextController
                                                              .text),
                                                          FFDevEnvironmentValues()
                                                              .applicationId,
                                                          FFDevEnvironmentValues()
                                                              .applicationSecret,
                                                          FFDevEnvironmentValues()
                                                              .initializeFaceIDURL,
                                                          FFDevEnvironmentValues()
                                                              .validateFaceIDURL,
                                                          FFDevEnvironmentValues()
                                                              .srURL,
                                                          FFDevEnvironmentValues()
                                                              .erURL,
                                                          FFDevEnvironmentValues()
                                                              .apiKey,
                                                        );
                                                      } else {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (dialogContext) {
                                                            return Dialog(
                                                              elevation: 0,
                                                              insetPadding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              alignment: AlignmentDirectional(
                                                                      0.0, 0.0)
                                                                  .resolve(
                                                                      Directionality.of(
                                                                          context)),
                                                              child:
                                                                  GestureDetector(
                                                                onTap: () {
                                                                  FocusScope.of(
                                                                          dialogContext)
                                                                      .unfocus();
                                                                  FocusManager
                                                                      .instance
                                                                      .primaryFocus
                                                                      ?.unfocus();
                                                                },
                                                                child:
                                                                    ErrorMessageDialogWidget(
                                                                  errorMessageBody:
                                                                      'Please try again',
                                                                  titleValue:
                                                                      'Authentication Failed',
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      }
                                                    }

                                                    safeSetState(() {});
                                                  },
                                                  text: 'Log in',
                                                  options: FFButtonOptions(
                                                    width: double.infinity,
                                                    height: 50.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: Color(0xFFFF6600),
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .openSans(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontStyle,
                                                          ),
                                                          color: Colors.white,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontStyle,
                                                        ),
                                                    elevation: 2.0,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'buttonOnPageLoadAnimation']!),
                                              ),
                                            );
                                          } else {
                                            return Container(
                                              height: 85.0,
                                              decoration: BoxDecoration(),
                                              child: wrapWithModel(
                                                model: _model
                                                    .loadingIndicatorModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LoadingIndicatorWidget(),
                                              ),
                                            );
                                          }
                                        },
                                      ),
                                    ].divide(SizedBox(height: 15.0)),
                                  ),
                                ),
                              ].divide(SizedBox(height: 10.0)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ).animateOnPageLoad(
                    animationsMap['columnOnPageLoadAnimation1']!),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
