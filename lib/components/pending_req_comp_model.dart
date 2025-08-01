import '/components/chips_widget.dart';
import '/components/upi_host_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'pending_req_comp_widget.dart' show PendingReqCompWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PendingReqCompModel extends FlutterFlowModel<PendingReqCompWidget> {
  ///  Local state fields for this component.

  String selectedPRChip = 'upiHost';

  ///  State fields for stateful widgets in this component.

  // Model for Chips component.
  late ChipsModel chipsModel1;
  // Model for Chips component.
  late ChipsModel chipsModel2;
  // Model for Chips component.
  late ChipsModel chipsModel3;
  // Model for Chips component.
  late ChipsModel chipsModel4;
  // Model for Chips component.
  late ChipsModel chipsModel5;
  // Model for Chips component.
  late ChipsModel chipsModel6;
  // Model for Chips component.
  late ChipsModel chipsModel7;
  // Model for Chips component.
  late ChipsModel chipsModel8;
  // Model for Chips component.
  late ChipsModel chipsModel9;
  // Model for UpiHostComponent component.
  late UpiHostComponentModel upiHostComponentModel;

  @override
  void initState(BuildContext context) {
    chipsModel1 = createModel(context, () => ChipsModel());
    chipsModel2 = createModel(context, () => ChipsModel());
    chipsModel3 = createModel(context, () => ChipsModel());
    chipsModel4 = createModel(context, () => ChipsModel());
    chipsModel5 = createModel(context, () => ChipsModel());
    chipsModel6 = createModel(context, () => ChipsModel());
    chipsModel7 = createModel(context, () => ChipsModel());
    chipsModel8 = createModel(context, () => ChipsModel());
    chipsModel9 = createModel(context, () => ChipsModel());
    upiHostComponentModel = createModel(context, () => UpiHostComponentModel());
  }

  @override
  void dispose() {
    chipsModel1.dispose();
    chipsModel2.dispose();
    chipsModel3.dispose();
    chipsModel4.dispose();
    chipsModel5.dispose();
    chipsModel6.dispose();
    chipsModel7.dispose();
    chipsModel8.dispose();
    chipsModel9.dispose();
    upiHostComponentModel.dispose();
  }
}
