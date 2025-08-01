// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SysModelDataListModelStruct extends BaseStruct {
  SysModelDataListModelStruct({
    String? id,
    String? value,
    String? readperm,
    String? writeperm,
    String? dataType,
  })  : _id = id,
        _value = value,
        _readperm = readperm,
        _writeperm = writeperm,
        _dataType = dataType;

  // "ID" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "VALUE" field.
  String? _value;
  String get value => _value ?? '';
  set value(String? val) => _value = val;

  bool hasValue() => _value != null;

  // "READPERM" field.
  String? _readperm;
  String get readperm => _readperm ?? '';
  set readperm(String? val) => _readperm = val;

  bool hasReadperm() => _readperm != null;

  // "WRITEPERM" field.
  String? _writeperm;
  String get writeperm => _writeperm ?? '';
  set writeperm(String? val) => _writeperm = val;

  bool hasWriteperm() => _writeperm != null;

  // "DATA_TYPE" field.
  String? _dataType;
  String get dataType => _dataType ?? '';
  set dataType(String? val) => _dataType = val;

  bool hasDataType() => _dataType != null;

  static SysModelDataListModelStruct fromMap(Map<String, dynamic> data) =>
      SysModelDataListModelStruct(
        id: data['ID'] as String?,
        value: data['VALUE'] as String?,
        readperm: data['READPERM'] as String?,
        writeperm: data['WRITEPERM'] as String?,
        dataType: data['DATA_TYPE'] as String?,
      );

  static SysModelDataListModelStruct? maybeFromMap(dynamic data) => data is Map
      ? SysModelDataListModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ID': _id,
        'VALUE': _value,
        'READPERM': _readperm,
        'WRITEPERM': _writeperm,
        'DATA_TYPE': _dataType,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ID': serializeParam(
          _id,
          ParamType.String,
        ),
        'VALUE': serializeParam(
          _value,
          ParamType.String,
        ),
        'READPERM': serializeParam(
          _readperm,
          ParamType.String,
        ),
        'WRITEPERM': serializeParam(
          _writeperm,
          ParamType.String,
        ),
        'DATA_TYPE': serializeParam(
          _dataType,
          ParamType.String,
        ),
      }.withoutNulls;

  static SysModelDataListModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SysModelDataListModelStruct(
        id: deserializeParam(
          data['ID'],
          ParamType.String,
          false,
        ),
        value: deserializeParam(
          data['VALUE'],
          ParamType.String,
          false,
        ),
        readperm: deserializeParam(
          data['READPERM'],
          ParamType.String,
          false,
        ),
        writeperm: deserializeParam(
          data['WRITEPERM'],
          ParamType.String,
          false,
        ),
        dataType: deserializeParam(
          data['DATA_TYPE'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SysModelDataListModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SysModelDataListModelStruct &&
        id == other.id &&
        value == other.value &&
        readperm == other.readperm &&
        writeperm == other.writeperm &&
        dataType == other.dataType;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, value, readperm, writeperm, dataType]);
}

SysModelDataListModelStruct createSysModelDataListModelStruct({
  String? id,
  String? value,
  String? readperm,
  String? writeperm,
  String? dataType,
}) =>
    SysModelDataListModelStruct(
      id: id,
      value: value,
      readperm: readperm,
      writeperm: writeperm,
      dataType: dataType,
    );
