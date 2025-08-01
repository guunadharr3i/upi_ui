import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sidebar_menu_item_model.dart';
export 'sidebar_menu_item_model.dart';

class SidebarMenuItemWidget extends StatefulWidget {
  const SidebarMenuItemWidget({
    super.key,
    required this.name,
    required this.nameColor,
    required this.cardColor,
  });

  final String? name;
  final Color? nameColor;
  final Color? cardColor;

  @override
  State<SidebarMenuItemWidget> createState() => _SidebarMenuItemWidgetState();
}

class _SidebarMenuItemWidgetState extends State<SidebarMenuItemWidget> {
  late SidebarMenuItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SidebarMenuItemModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: widget!.cardColor,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Text(
                  valueOrDefault<String>(
                    widget!.name,
                    'Pending Requests',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.mulish(
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: widget!.nameColor,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
              ),
            ),
            Icon(
              Icons.arrow_forward_rounded,
              color: widget!.nameColor,
              size: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}
