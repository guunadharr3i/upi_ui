import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'empty_page_display_model.dart';
export 'empty_page_display_model.dart';

class EmptyPageDisplayWidget extends StatefulWidget {
  const EmptyPageDisplayWidget({super.key});

  @override
  State<EmptyPageDisplayWidget> createState() => _EmptyPageDisplayWidgetState();
}

class _EmptyPageDisplayWidgetState extends State<EmptyPageDisplayWidget> {
  late EmptyPageDisplayModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyPageDisplayModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        if (responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
          tabletLandscape: false,
          desktop: false,
        ))
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: 200.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFE3E3E3),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Search data for the details',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Mulish',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                              ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.lightbulb_circle,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 40.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: 200.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFE3E3E3),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Edit the fields to change the data',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Mulish',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                              ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).primary,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.edit,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                size: 24.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ].divide(SizedBox(width: 20.0)),
          ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Search data for the details',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Mulish',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      letterSpacing: 0.0,
                    ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/undraw_searching_no1g.png',
                  width: 350.0,
                  height: 350.0,
                  fit: BoxFit.cover,
                ),
              ),
            ].divide(SizedBox(height: 10.0)),
          ),
        ),
      ],
    );
  }
}
