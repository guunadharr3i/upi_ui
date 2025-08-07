// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataTableNewModelStruct extends BaseStruct {
  DataTableNewModelStruct({
    List<String>? headers,
    List<DataTableModelStruct>? value,
  })  : _headers = headers,
        _value = value;

  // "headers" field.
  List<String>? _headers;
  List<String> get headers => _headers ?? const [];
  set headers(List<String>? val) => _headers = val;

  void updateHeaders(Function(List<String>) updateFn) {
    updateFn(_headers ??= []);
  }

  bool hasHeaders() => _headers != null;

  // "value" field.
  List<DataTableModelStruct>? _value;
  List<DataTableModelStruct> get value => _value ?? const [];
  set value(List<DataTableModelStruct>? val) => _value = val;

  void updateValue(Function(List<DataTableModelStruct>) updateFn) {
    updateFn(_value ??= []);
  }

  bool hasValue() => _value != null;

  static DataTableNewModelStruct fromMap(Map<String, dynamic> data) =>
      DataTableNewModelStruct(
        headers: getDataList(data['headers']),
        value: getStructList(
          data['value'],
          DataTableModelStruct.fromMap,
        ),
      );

  static DataTableNewModelStruct? maybeFromMap(dynamic data) => data is Map
      ? DataTableNewModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'headers': _headers,
        'value': _value?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'headers': serializeParam(
          _headers,
          ParamType.String,
          isList: true,
        ),
        'value': serializeParam(
          _value,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static DataTableNewModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DataTableNewModelStruct(
        headers: deserializeParam<String>(
          data['headers'],
          ParamType.String,
          true,
        ),
        value: deserializeStructParam<DataTableModelStruct>(
          data['value'],
          ParamType.DataStruct,
          true,
          structBuilder: DataTableModelStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'DataTableNewModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DataTableNewModelStruct &&
        listEquality.equals(headers, other.headers) &&
        listEquality.equals(value, other.value);
  }

  @override
  int get hashCode => const ListEquality().hash([headers, value]);
}

DataTableNewModelStruct createDataTableNewModelStruct() =>
    DataTableNewModelStruct();
