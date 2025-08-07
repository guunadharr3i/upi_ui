// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserAccessStruct extends BaseStruct {
  UserAccessStruct({
    String? tableId,
    List<String>? actionIds,
  })  : _tableId = tableId,
        _actionIds = actionIds;

  // "tableId" field.
  String? _tableId;
  String get tableId => _tableId ?? '';
  set tableId(String? val) => _tableId = val;

  bool hasTableId() => _tableId != null;

  // "actionIds" field.
  List<String>? _actionIds;
  List<String> get actionIds => _actionIds ?? const [];
  set actionIds(List<String>? val) => _actionIds = val;

  void updateActionIds(Function(List<String>) updateFn) {
    updateFn(_actionIds ??= []);
  }

  bool hasActionIds() => _actionIds != null;

  static UserAccessStruct fromMap(Map<String, dynamic> data) =>
      UserAccessStruct(
        tableId: data['tableId'] as String?,
        actionIds: getDataList(data['actionIds']),
      );

  static UserAccessStruct? maybeFromMap(dynamic data) => data is Map
      ? UserAccessStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'tableId': _tableId,
        'actionIds': _actionIds,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'tableId': serializeParam(
          _tableId,
          ParamType.String,
        ),
        'actionIds': serializeParam(
          _actionIds,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static UserAccessStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserAccessStruct(
        tableId: deserializeParam(
          data['tableId'],
          ParamType.String,
          false,
        ),
        actionIds: deserializeParam<String>(
          data['actionIds'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'UserAccessStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UserAccessStruct &&
        tableId == other.tableId &&
        listEquality.equals(actionIds, other.actionIds);
  }

  @override
  int get hashCode => const ListEquality().hash([tableId, actionIds]);
}

UserAccessStruct createUserAccessStruct({
  String? tableId,
}) =>
    UserAccessStruct(
      tableId: tableId,
    );
