import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dummyyy_model.dart';
export 'dummyyy_model.dart';

class DummyyyWidget extends StatefulWidget {
  const DummyyyWidget({
    super.key,
    this.qwerty,
  });

  final List<DataTableNewModelStruct>? qwerty;

  @override
  State<DummyyyWidget> createState() => _DummyyyWidgetState();
}

class _DummyyyWidgetState extends State<DummyyyWidget> {
  late DummyyyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DummyyyModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Builder(
        builder: (context) {
          final holaaa = widget!.qwerty?.toList() ?? [];

          return Column(
            mainAxisSize: MainAxisSize.max,
            children: List.generate(holaaa.length, (holaaaIndex) {
              final holaaaItem = holaaa[holaaaIndex];
              return Text(
                (holaaaItem.toMap()).toString(),
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
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
              );
            }),
          );
        },
      ),
    );
  }
}
