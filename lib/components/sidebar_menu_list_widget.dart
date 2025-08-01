import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sidebar_menu_list_model.dart';
export 'sidebar_menu_list_model.dart';

class SidebarMenuListWidget extends StatefulWidget {
  const SidebarMenuListWidget({super.key});

  @override
  State<SidebarMenuListWidget> createState() => _SidebarMenuListWidgetState();
}

class _SidebarMenuListWidgetState extends State<SidebarMenuListWidget> {
  late SidebarMenuListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SidebarMenuListModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.0,
      height: MediaQuery.sizeOf(context).height * 0.82,
      decoration: BoxDecoration(
        color: Color(0xFFCEC5C5),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 330.0,
            height: 50.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Text(
                      'Pending Requests',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.mulish(
                              fontWeight: FontWeight.bold,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_rounded,
                    color: Colors.black,
                    size: 30.0,
                  ),
                ],
              ),
            ),
          ),
        ].addToStart(SizedBox(height: 10.0)),
      ),
    );
  }
}
