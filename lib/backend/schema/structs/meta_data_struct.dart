// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MetaDataStruct extends BaseStruct {
  MetaDataStruct({
    String? name,
    String? type,
  })  : _name = name,
        _type = type;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  static MetaDataStruct fromMap(Map<String, dynamic> data) => MetaDataStruct(
        name: data['name'] as String?,
        type: data['type'] as String?,
      );

  static MetaDataStruct? maybeFromMap(dynamic data) =>
      data is Map ? MetaDataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'type': _type,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
      }.withoutNulls;

  static MetaDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      MetaDataStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MetaDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MetaDataStruct && name == other.name && type == other.type;
  }

  @override
  int get hashCode => const ListEquality().hash([name, type]);
}

MetaDataStruct createMetaDataStruct({
  String? name,
  String? type,
}) =>
    MetaDataStruct(
      name: name,
      type: type,
    );
