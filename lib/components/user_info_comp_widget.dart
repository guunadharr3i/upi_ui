import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'user_info_comp_model.dart';
export 'user_info_comp_model.dart';

class UserInfoCompWidget extends StatefulWidget {
  const UserInfoCompWidget({
    super.key,
    String? userId,
  }) : this.userId = userId ?? '';

  final String userId;

  @override
  State<UserInfoCompWidget> createState() => _UserInfoCompWidgetState();
}

class _UserInfoCompWidgetState extends State<UserInfoCompWidget> {
  late UserInfoCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserInfoCompModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 141.0,
      height: 170.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).bgColor2,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 66.0,
            height: 66.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).bgColor4,
              borderRadius: BorderRadius.circular(55.0),
            ),
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: FaIcon(
                FontAwesomeIcons.user,
                color: FlutterFlowTheme.of(context).headingColor,
                size: 30.0,
              ),
            ),
          ),
          SizedBox(
            width: 108.0,
            child: Divider(
              thickness: 1.0,
              color: FlutterFlowTheme.of(context).secondaryText,
            ),
          ),
          Text(
            valueOrDefault<String>(
              widget!.userId,
              'BAN741655',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.mulish(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).headingColor,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          Text(
            'Support',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.mulish(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
        ],
      ),
    );
  }
}
