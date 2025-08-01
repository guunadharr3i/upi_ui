// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmployeeListModelStruct extends BaseStruct {
  EmployeeListModelStruct({
    int? id,
    String? name,
    String? email,
    String? department,
    int? salary,
  })  : _id = id,
        _name = name,
        _email = email,
        _department = department,
        _salary = salary;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "department" field.
  String? _department;
  String get department => _department ?? '';
  set department(String? val) => _department = val;

  bool hasDepartment() => _department != null;

  // "salary" field.
  int? _salary;
  int get salary => _salary ?? 0;
  set salary(int? val) => _salary = val;

  void incrementSalary(int amount) => salary = salary + amount;

  bool hasSalary() => _salary != null;

  static EmployeeListModelStruct fromMap(Map<String, dynamic> data) =>
      EmployeeListModelStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        email: data['email'] as String?,
        department: data['department'] as String?,
        salary: castToType<int>(data['salary']),
      );

  static EmployeeListModelStruct? maybeFromMap(dynamic data) => data is Map
      ? EmployeeListModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'email': _email,
        'department': _department,
        'salary': _salary,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'department': serializeParam(
          _department,
          ParamType.String,
        ),
        'salary': serializeParam(
          _salary,
          ParamType.int,
        ),
      }.withoutNulls;

  static EmployeeListModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      EmployeeListModelStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        department: deserializeParam(
          data['department'],
          ParamType.String,
          false,
        ),
        salary: deserializeParam(
          data['salary'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'EmployeeListModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EmployeeListModelStruct &&
        id == other.id &&
        name == other.name &&
        email == other.email &&
        department == other.department &&
        salary == other.salary;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, name, email, department, salary]);
}

EmployeeListModelStruct createEmployeeListModelStruct({
  int? id,
  String? name,
  String? email,
  String? department,
  int? salary,
}) =>
    EmployeeListModelStruct(
      id: id,
      name: name,
      email: email,
      department: department,
      salary: salary,
    );
