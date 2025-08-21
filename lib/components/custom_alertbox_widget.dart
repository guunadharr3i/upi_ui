import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'custom_alertbox_model.dart';
export 'custom_alertbox_model.dart';

class CustomAlertboxWidget extends StatefulWidget {
  const CustomAlertboxWidget({super.key});

  @override
  State<CustomAlertboxWidget> createState() => _CustomAlertboxWidgetState();
}

class _CustomAlertboxWidgetState extends State<CustomAlertboxWidget> {
  late CustomAlertboxModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomAlertboxModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
