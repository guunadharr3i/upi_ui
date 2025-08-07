import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/loading_indicator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'loginpage_widget.dart' show LoginpageWidget;
import 'package:flutter/material.dart';

class LoginpageModel extends FlutterFlowModel<LoginpageWidget> {
  ///  Local state fields for this page.

  bool isLoading = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Custom Action - faceUserCheck] action in loginpage widget.
  FaceUserStruct? res;
  // Stores action output result for [Custom Action - generateWebDeviceHashWithTime] action in loginpage widget.
  String? hashval;
  // State field(s) for userName widget.
  FocusNode? userNameFocusNode;
  TextEditingController? userNameTextController;
  String? Function(BuildContext, String?)? userNameTextControllerValidator;
  String? _userNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'User ID is required';
    }

    return null;
  }

  // State field(s) for Password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required';
    }

    return null;
  }

  // Stores action output result for [Validate Form] action in Button widget.
  bool? resposnevalid;
  // Stores action output result for [Backend Call - API (LDAPAuth)] action in Button widget.
  ApiCallResponse? ldapRes;
  // Model for loadingIndicator component.
  late LoadingIndicatorModel loadingIndicatorModel;

  @override
  void initState(BuildContext context) {
    userNameTextControllerValidator = _userNameTextControllerValidator;
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
    loadingIndicatorModel = createModel(context, () => LoadingIndicatorModel());
  }

  @override
  void dispose() {
    userNameFocusNode?.dispose();
    userNameTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    loadingIndicatorModel.dispose();
  }
}
