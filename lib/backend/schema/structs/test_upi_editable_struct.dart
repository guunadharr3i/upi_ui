// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TestUpiEditableStruct extends BaseStruct {
  TestUpiEditableStruct({
    List<MetaDataStruct>? column,
  }) : _column = column;

  // "column" field.
  List<MetaDataStruct>? _column;
  List<MetaDataStruct> get column => _column ?? const [];
  set column(List<MetaDataStruct>? val) => _column = val;

  void updateColumn(Function(List<MetaDataStruct>) updateFn) {
    updateFn(_column ??= []);
  }

  bool hasColumn() => _column != null;

  static TestUpiEditableStruct fromMap(Map<String, dynamic> data) =>
      TestUpiEditableStruct(
        column: getStructList(
          data['column'],
          MetaDataStruct.fromMap,
        ),
      );

  static TestUpiEditableStruct? maybeFromMap(dynamic data) => data is Map
      ? TestUpiEditableStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'column': _column?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'column': serializeParam(
          _column,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static TestUpiEditableStruct fromSerializableMap(Map<String, dynamic> data) =>
      TestUpiEditableStruct(
        column: deserializeStructParam<MetaDataStruct>(
          data['column'],
          ParamType.DataStruct,
          true,
          structBuilder: MetaDataStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'TestUpiEditableStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is TestUpiEditableStruct &&
        listEquality.equals(column, other.column);
  }

  @override
  int get hashCode => const ListEquality().hash([column]);
}

TestUpiEditableStruct createTestUpiEditableStruct() => TestUpiEditableStruct();
