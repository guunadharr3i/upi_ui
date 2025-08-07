// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SysDataTableStruct extends BaseStruct {
  SysDataTableStruct({
    List<MetaDataStruct>? metaData,
    List<SysModelDataListModelStruct>? data,
  })  : _metaData = metaData,
        _data = data;

  // "metaData" field.
  List<MetaDataStruct>? _metaData;
  List<MetaDataStruct> get metaData => _metaData ?? const [];
  set metaData(List<MetaDataStruct>? val) => _metaData = val;

  void updateMetaData(Function(List<MetaDataStruct>) updateFn) {
    updateFn(_metaData ??= []);
  }

  bool hasMetaData() => _metaData != null;

  // "data" field.
  List<SysModelDataListModelStruct>? _data;
  List<SysModelDataListModelStruct> get data => _data ?? const [];
  set data(List<SysModelDataListModelStruct>? val) => _data = val;

  void updateData(Function(List<SysModelDataListModelStruct>) updateFn) {
    updateFn(_data ??= []);
  }

  bool hasData() => _data != null;

  static SysDataTableStruct fromMap(Map<String, dynamic> data) =>
      SysDataTableStruct(
        metaData: getStructList(
          data['metaData'],
          MetaDataStruct.fromMap,
        ),
        data: getStructList(
          data['data'],
          SysModelDataListModelStruct.fromMap,
        ),
      );

  static SysDataTableStruct? maybeFromMap(dynamic data) => data is Map
      ? SysDataTableStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'metaData': _metaData?.map((e) => e.toMap()).toList(),
        'data': _data?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'metaData': serializeParam(
          _metaData,
          ParamType.DataStruct,
          isList: true,
        ),
        'data': serializeParam(
          _data,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static SysDataTableStruct fromSerializableMap(Map<String, dynamic> data) =>
      SysDataTableStruct(
        metaData: deserializeStructParam<MetaDataStruct>(
          data['metaData'],
          ParamType.DataStruct,
          true,
          structBuilder: MetaDataStruct.fromSerializableMap,
        ),
        data: deserializeStructParam<SysModelDataListModelStruct>(
          data['data'],
          ParamType.DataStruct,
          true,
          structBuilder: SysModelDataListModelStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'SysDataTableStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is SysDataTableStruct &&
        listEquality.equals(metaData, other.metaData) &&
        listEquality.equals(data, other.data);
  }

  @override
  int get hashCode => const ListEquality().hash([metaData, data]);
}

SysDataTableStruct createSysDataTableStruct() => SysDataTableStruct();
