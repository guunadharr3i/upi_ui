import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/dynamic_edit_fields_widget_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'test2_widget.dart' show Test2Widget;
import 'package:flutter/material.dart';

class Test2Model extends FlutterFlowModel<Test2Widget> {
  ///  Local state fields for this page.

  List<MetaDataStruct> fields = [];
  void addToFields(MetaDataStruct item) => fields.add(item);
  void removeFromFields(MetaDataStruct item) => fields.remove(item);
  void removeAtIndexFromFields(int index) => fields.removeAt(index);
  void insertAtIndexInFields(int index, MetaDataStruct item) =>
      fields.insert(index, item);
  void updateFieldsAtIndex(int index, Function(MetaDataStruct) updateFn) =>
      fields[index] = updateFn(fields[index]);

  DataStruct? data1;
  void updateData1Struct(Function(DataStruct) updateFn) {
    updateFn(data1 ??= DataStruct());
  }

  DataTableNewModelStruct? dataTableNewModal;
  void updateDataTableNewModalStruct(
      Function(DataTableNewModelStruct) updateFn) {
    updateFn(dataTableNewModal ??= DataTableNewModelStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (mockUPI)] action in test2 widget.
  ApiCallResponse? apiResultcqt;
  // Model for DynamicEditFieldsWidgetCard component.
  late DynamicEditFieldsWidgetCardModel dynamicEditFieldsWidgetCardModel;

  @override
  void initState(BuildContext context) {
    dynamicEditFieldsWidgetCardModel =
        createModel(context, () => DynamicEditFieldsWidgetCardModel());
  }

  @override
  void dispose() {
    dynamicEditFieldsWidgetCardModel.dispose();
  }
}
