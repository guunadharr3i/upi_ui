import '/flutter_flow/flutter_flow_util.dart';
import 'test_vogue_widget.dart' show TestVogueWidget;
import 'package:flutter/material.dart';

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

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
