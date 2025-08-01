import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'chips_model.dart';
export 'chips_model.dart';

class ChipsWidget extends StatefulWidget {
  const ChipsWidget({
    super.key,
    required this.chipName,
    required this.colorChip,
    required this.borderColor,
    required this.nameColor,
  });

  final String? chipName;
  final Color? colorChip;
  final Color? borderColor;
  final Color? nameColor;

  @override
  State<ChipsWidget> createState() => _ChipsWidgetState();
}

class _ChipsWidgetState extends State<ChipsWidget> {
  late ChipsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChipsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
      child: Container(
        width: 200.0,
        height: 60.0,
        decoration: BoxDecoration(
          color: widget!.colorChip,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: valueOrDefault<Color>(
              widget!.borderColor,
              Colors.black,
            ),
          ),
        ),
        child: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
            child: Text(
              valueOrDefault<String>(
                widget!.chipName,
                'UPI HOST',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.mulish(
                      fontWeight: FontWeight.w500,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    color: widget!.nameColor,
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
