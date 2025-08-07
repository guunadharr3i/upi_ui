import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'footer_model.dart';
export 'footer_model.dart';

class FooterWidget extends StatefulWidget {
  const FooterWidget({super.key});

  @override
  State<FooterWidget> createState() => _FooterWidgetState();
}

class _FooterWidgetState extends State<FooterWidget> {
  late FooterModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FooterModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * 0.08,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primary,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 15.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Terms & Conditions',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Mulish',
                        color: Colors.white,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  'Disclaimer',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Mulish',
                        color: Colors.white,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  'Privacy policy',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Mulish',
                        color: Colors.white,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ].divide(SizedBox(width: 80.0)),
            ),
          ],
        ),
      ),
    );
  }
}
