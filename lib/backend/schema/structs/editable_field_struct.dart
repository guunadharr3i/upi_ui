// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EditableFieldStruct extends BaseStruct {
  EditableFieldStruct({
    List<String>? columnName,
  }) : _columnName = columnName;

  // "columnName" field.
  List<String>? _columnName;
  List<String> get columnName => _columnName ?? const [];
  set columnName(List<String>? val) => _columnName = val;

  void updateColumnName(Function(List<String>) updateFn) {
    updateFn(_columnName ??= []);
  }

  bool hasColumnName() => _columnName != null;

  static EditableFieldStruct fromMap(Map<String, dynamic> data) =>
      EditableFieldStruct(
        columnName: getDataList(data['columnName']),
      );

  static EditableFieldStruct? maybeFromMap(dynamic data) => data is Map
      ? EditableFieldStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'columnName': _columnName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'columnName': serializeParam(
          _columnName,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static EditableFieldStruct fromSerializableMap(Map<String, dynamic> data) =>
      EditableFieldStruct(
        columnName: deserializeParam<String>(
          data['columnName'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'EditableFieldStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is EditableFieldStruct &&
        listEquality.equals(columnName, other.columnName);
  }

  @override
  int get hashCode => const ListEquality().hash([columnName]);
}

EditableFieldStruct createEditableFieldStruct() => EditableFieldStruct();
