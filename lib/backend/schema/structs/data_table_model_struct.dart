// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataTableModelStruct extends BaseStruct {
  DataTableModelStruct({
    List<String>? modelList,
  }) : _modelList = modelList;

  // "modelList" field.
  List<String>? _modelList;
  List<String> get modelList => _modelList ?? const [];
  set modelList(List<String>? val) => _modelList = val;

  void updateModelList(Function(List<String>) updateFn) {
    updateFn(_modelList ??= []);
  }

  bool hasModelList() => _modelList != null;

  static DataTableModelStruct fromMap(Map<String, dynamic> data) =>
      DataTableModelStruct(
        modelList: getDataList(data['modelList']),
      );

  static DataTableModelStruct? maybeFromMap(dynamic data) => data is Map
      ? DataTableModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'modelList': _modelList,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'modelList': serializeParam(
          _modelList,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static DataTableModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      DataTableModelStruct(
        modelList: deserializeParam<String>(
          data['modelList'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'DataTableModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DataTableModelStruct &&
        listEquality.equals(modelList, other.modelList);
  }

  @override
  int get hashCode => const ListEquality().hash([modelList]);
}

DataTableModelStruct createDataTableModelStruct() => DataTableModelStruct();
