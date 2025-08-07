import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'side_bar_icicilogo_model.dart';
export 'side_bar_icicilogo_model.dart';

class SideBarIcicilogoWidget extends StatefulWidget {
  const SideBarIcicilogoWidget({super.key});

  @override
  State<SideBarIcicilogoWidget> createState() => _SideBarIcicilogoWidgetState();
}

class _SideBarIcicilogoWidgetState extends State<SideBarIcicilogoWidget> {
  late SideBarIcicilogoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SideBarIcicilogoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Stack(
      children: [
        if (FFAppState().sidebar == true ? true : false)
          Container(
            width: valueOrDefault<double>(
              () {
                if (MediaQuery.sizeOf(context).height >= 900.0) {
                  return 200.0;
                } else if (MediaQuery.sizeOf(context).height <= 600.0) {
                  return 142.0;
                } else {
                  return 190.0;
                }
              }(),
              200.0,
            ),
            height: valueOrDefault<double>(
              () {
                if (MediaQuery.sizeOf(context).height >= 900.0) {
                  return 100.0;
                } else if (MediaQuery.sizeOf(context).height <= 600.0) {
                  return 80.0;
                } else {
                  return 90.0;
                }
              }(),
              100.0,
            ),
            constraints: BoxConstraints(
              maxWidth: 213.0,
              maxHeight: 100.0,
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              boxShadow: [
                BoxShadow(
                  blurRadius: 4.0,
                  color: Color(0x33000000),
                  offset: Offset(
                    0.0,
                    2.0,
                  ),
                )
              ],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/icicilight.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        if (FFAppState().sidebar == true ? false : true)
          Container(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * 0.08,
            constraints: BoxConstraints(
              minHeight: 55.0,
              maxHeight: 78.0,
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: SvgPicture.asset(
                'assets/images/ICICI_Logo_Small.svg',
                width: 90.0,
                height: 300.0,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
      ],
    );
  }
}
