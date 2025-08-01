import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'test_vogue_model.dart';
export 'test_vogue_model.dart';

class TestVogueWidget extends StatefulWidget {
  const TestVogueWidget({super.key});

  static String routeName = 'TestVogue';
  static String routePath = '/testVogue';

  @override
  State<TestVogueWidget> createState() => _TestVogueWidgetState();
}

class _TestVogueWidgetState extends State<TestVogueWidget> {
  late TestVogueModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TestVogueModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Test Page',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.mulish(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: 198.0,
                  height: 46.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).bgColor3,
                    borderRadius: BorderRadius.circular(29.0),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                      child: FlutterFlowDropDown<String>(
                        controller: _model.dropDownValueController ??=
                            FormFieldController<String>(
                          _model.dropDownValue ??= 'UPI Host',
                        ),
                        options: [
                          'UPI Host',
                          'UPI SMS',
                          'SYS',
                          'UPI Complaint',
                          'UPI Country',
                          'UPI Source',
                          'UPI FRM',
                          'UPI Transactions'
                        ],
                        onChanged: (val) =>
                            safeSetState(() => _model.dropDownValue = val),
                        height: 38.0,
                        menuOffset: Offset(0, -10.0),
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              font: GoogleFonts.mulish(
                                fontWeight: FontWeight.w500,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                        hintText: 'UPI Host',
                        icon: Icon(
                          Icons.arrow_circle_down,
                          color: FlutterFlowTheme.of(context).headingColor,
                          size: 38.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 0.0,
                        borderColor: Color(0x004B39EF),
                        borderWidth: 0.0,
                        borderRadius: 55.0,
                        margin:
                            EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 4.0, 0.0),
                        hidesUnderline: true,
                        isOverButton: false,
                        isSearchable: false,
                        isMultiSelect: false,
                        labelText: 'UPI HOST',
                        labelTextStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  font: GoogleFonts.mulish(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                ),
                      ),
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 2.0,
                color: FlutterFlowTheme.of(context).alternate,
              ),
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).bgColor4,
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
