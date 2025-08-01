import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'test_vogue_widget.dart' show TestVogueWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TestVogueModel extends FlutterFlowModel<TestVogueWidget> {
  ///  Local state fields for this page.

  List<String> dropdownValue = [
    'Pavan',
    'Hello World',
    'ZPO',
    'JAPAN',
    'USA',
    'INDIA',
    'JAPAN'
  ];
  void addToDropdownValue(String item) => dropdownValue.add(item);
  void removeFromDropdownValue(String item) => dropdownValue.remove(item);
  void removeAtIndexFromDropdownValue(int index) =>
      dropdownValue.removeAt(index);
  void insertAtIndexInDropdownValue(int index, String item) =>
      dropdownValue.insert(index, item);
  void updateDropdownValueAtIndex(int index, Function(String) updateFn) =>
      dropdownValue[index] = updateFn(dropdownValue[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
