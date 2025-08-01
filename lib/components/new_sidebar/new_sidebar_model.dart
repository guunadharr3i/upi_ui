import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'new_sidebar_widget.dart' show NewSidebarWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NewSidebarModel extends FlutterFlowModel<NewSidebarWidget> {
  ///  Local state fields for this component.

  bool? pendingRequests = false;

  bool? upiHost = false;

  bool? upiSms = false;

  bool? sys = false;

  bool? upiComplaint = false;

  bool? upiCountry = false;

  bool? upiSource = false;

  bool upiFrm = false;

  bool? upiTransaction = false;

  bool? closeSidebar = false;

  bool hideExpansion = false;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
