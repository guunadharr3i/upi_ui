import '/components/new_dynamic_edit_fields_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'test_new_d_t_model.dart';
export 'test_new_d_t_model.dart';

class TestNewDTWidget extends StatefulWidget {
  const TestNewDTWidget({super.key});

  static String routeName = 'testNewDT';
  static String routePath = '/testNewDT';

  @override
  State<TestNewDTWidget> createState() => _TestNewDTWidgetState();
}

class _TestNewDTWidgetState extends State<TestNewDTWidget> {
  late TestNewDTModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TestNewDTModel());
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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Page Title gg',
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
            children: [
              Builder(
                builder: (context) {
                  final gg = getJsonField(
                    FFAppState().upiHostResponse,
                    r'''$.data''',
                  ).toList();

                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    children: List.generate(gg.length, (ggIndex) {
                      final ggItem = gg[ggIndex];
                      return Text(
                        getJsonField(
                          ggItem,
                          r'''$.HOST''',
                        ).toString(),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.mulish(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      );
                    }),
                  );
                },
              ),
              Expanded(
                child: Container(
                  width: 500.0,
                  height: 400.0,
                  decoration: BoxDecoration(),
                  child: Builder(
                    builder: (context) {
                      final db = getJsonField(
                        FFAppState().upiHostResponse,
                        r'''$.data''',
                      ).toList();

                      return FlutterFlowDataTable<dynamic>(
                        controller: _model.paginatedDataTableController,
                        data: db,
                        columnsBuilder: (onSortChanged) => [
                          DataColumn2(
                            label: DefaultTextStyle.merge(
                              softWrap: true,
                              child: Text(
                                'Edit Header 1',
                                style: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      font: GoogleFonts.mulish(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ),
                          DataColumn2(
                            label: DefaultTextStyle.merge(
                              softWrap: true,
                              child: Text(
                                'Edit Header 2',
                                style: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      font: GoogleFonts.mulish(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ),
                          DataColumn2(
                            label: DefaultTextStyle.merge(
                              softWrap: true,
                              child: Text(
                                'Edit Header 3',
                                style: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      font: GoogleFonts.mulish(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ),
                          DataColumn2(
                            label: DefaultTextStyle.merge(
                              softWrap: true,
                              child: Text(
                                'Edit Header 4',
                                style: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      font: GoogleFonts.mulish(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ),
                        ],
                        dataRowBuilder:
                            (dbItem, dbIndex, selected, onSelectChanged) =>
                                DataRow(
                          color: MaterialStateProperty.all(
                            dbIndex % 2 == 0
                                ? FlutterFlowTheme.of(context)
                                    .secondaryBackground
                                : FlutterFlowTheme.of(context)
                                    .primaryBackground,
                          ),
                          cells: [
                            Text(
                              valueOrDefault<String>(
                                getJsonField(
                                  dbItem,
                                  r'''$.HOST''',
                                )?.toString(),
                                'nt',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.mulish(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                            Text(
                              valueOrDefault<String>(
                                getJsonField(
                                  dbItem,
                                  r'''$.ID''',
                                )?.toString(),
                                'nt',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.mulish(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                            Text(
                              valueOrDefault<String>(
                                getJsonField(
                                  dbItem,
                                  r'''$.URL''',
                                )?.toString(),
                                'nt',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.mulish(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
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
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('ii'),
                                        content: Text(dbItem.toString()),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  await showDialog(
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: GestureDetector(
                                          onTap: () {
                                            FocusScope.of(dialogContext)
                                                .unfocus();
                                            FocusManager.instance.primaryFocus
                                                ?.unfocus();
                                          },
                                          child: NewDynamicEditFieldsWidget(
                                            dataTableNewModel: functions
                                                .dynamicDataTableConvertCopy(
                                                    dbItem),
                                            indexEdit: dbIndex,
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: Text(
                                  'Edit',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.mulish(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                        decoration: TextDecoration.underline,
                                      ),
                                ),
                              ),
                            ),
                          ].map((c) => DataCell(c)).toList(),
                        ),
                        paginated: true,
                        selectable: false,
                        hidePaginator: false,
                        showFirstLastButtons: false,
                        headingRowHeight: 56.0,
                        dataRowHeight: 48.0,
                        columnSpacing: 20.0,
                        headingRowColor: FlutterFlowTheme.of(context).primary,
                        borderRadius: BorderRadius.circular(8.0),
                        addHorizontalDivider: true,
                        addTopAndBottomDivider: false,
                        hideDefaultHorizontalDivider: true,
                        horizontalDividerColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        horizontalDividerThickness: 1.0,
                        addVerticalDivider: false,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
