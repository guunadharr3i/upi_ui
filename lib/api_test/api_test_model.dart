import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/upi_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'api_test_widget.dart' show ApiTestWidget;
import 'package:flutter/material.dart';

class ApiTestModel extends FlutterFlowModel<ApiTestWidget> {
  ///  Local state fields for this page.

  String json =
      '{\n      \"ID\": 368,\n      \"CONNECT_TIMEOUT\": 8000,\n      \"ENABLE_PROXY\": \"N\",\n      \"HOST\": \"AADHARENQUIRY\",\n      \"KEYSTORE_PASSWORD\": \"pass123\$\",\n      \"KEYSTORE_PATH\": \"/upi/UPI_LITE/cert_2018/upiapigateclientstore\",\n      \"MAX_CONNECTIONS\": 500,\n      \"MAX_PER_ROUTE\": 500,\n      \"METHOD\": \"post\",\n      \"PROTOCOL\": \"https\",\n      \"PROXY_ADDRESS\": null,\n      \"PROXY_PORT\": null,\n      \"READ_TIMEOUT\": 20000,\n      \"TLS_VERSION\": \"TLSv1.2\",\n      \"TRUSTSTORE_PASSWORD\": \"pass123\$\",\n      \"TRUSTSTORE_PATH\": \"/upi/UPI_LITE/cert_2018/upiapigateclientstore\",\n      \"URL\": \"apigeeuat.icicibankltd.com:8443/aadharvault?service=GetValue\"\n    }';

  DataTableNewModelStruct? model;
  void updateModelStruct(Function(DataTableNewModelStruct) updateFn) {
    updateFn(model ??= DataTableNewModelStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (userAccessMOCK)] action in apiTest widget.
  ApiCallResponse? apiResultgb3;
  // Model for UpiComp component.
  late UpiCompModel upiCompModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    upiCompModel = createModel(context, () => UpiCompModel());
  }

  @override
  void dispose() {
    upiCompModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
