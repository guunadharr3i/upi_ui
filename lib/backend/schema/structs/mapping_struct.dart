// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MappingStruct extends BaseStruct {
  MappingStruct({
    String? roleId,
    List<AccessByTableStruct>? accessByTable,
  })  : _roleId = roleId,
        _accessByTable = accessByTable;

  // "roleId" field.
  String? _roleId;
  String get roleId => _roleId ?? '';
  set roleId(String? val) => _roleId = val;

  bool hasRoleId() => _roleId != null;

  // "accessByTable" field.
  List<AccessByTableStruct>? _accessByTable;
  List<AccessByTableStruct> get accessByTable => _accessByTable ?? const [];
  set accessByTable(List<AccessByTableStruct>? val) => _accessByTable = val;

  void updateAccessByTable(Function(List<AccessByTableStruct>) updateFn) {
    updateFn(_accessByTable ??= []);
  }

  bool hasAccessByTable() => _accessByTable != null;

  static MappingStruct fromMap(Map<String, dynamic> data) => MappingStruct(
        roleId: data['roleId'] as String?,
        accessByTable: getStructList(
          data['accessByTable'],
          AccessByTableStruct.fromMap,
        ),
      );

  static MappingStruct? maybeFromMap(dynamic data) =>
      data is Map ? MappingStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'roleId': _roleId,
        'accessByTable': _accessByTable?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'roleId': serializeParam(
          _roleId,
          ParamType.String,
        ),
        'accessByTable': serializeParam(
          _accessByTable,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static MappingStruct fromSerializableMap(Map<String, dynamic> data) =>
      MappingStruct(
        roleId: deserializeParam(
          data['roleId'],
          ParamType.String,
          false,
        ),
        accessByTable: deserializeStructParam<AccessByTableStruct>(
          data['accessByTable'],
          ParamType.DataStruct,
          true,
          structBuilder: AccessByTableStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'MappingStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is MappingStruct &&
        roleId == other.roleId &&
        listEquality.equals(accessByTable, other.accessByTable);
  }

  @override
  int get hashCode => const ListEquality().hash([roleId, accessByTable]);
}

MappingStruct createMappingStruct({
  String? roleId,
}) =>
    MappingStruct(
      roleId: roleId,
    );
