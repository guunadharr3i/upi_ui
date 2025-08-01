// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TodoListModelStruct extends BaseStruct {
  TodoListModelStruct({
    int? userId,
    int? id,
    String? title,
    bool? completed,
  })  : _userId = userId,
        _id = id,
        _title = title,
        _completed = completed;

  // "userId" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;

  void incrementUserId(int amount) => userId = userId + amount;

  bool hasUserId() => _userId != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "completed" field.
  bool? _completed;
  bool get completed => _completed ?? false;
  set completed(bool? val) => _completed = val;

  bool hasCompleted() => _completed != null;

  static TodoListModelStruct fromMap(Map<String, dynamic> data) =>
      TodoListModelStruct(
        userId: castToType<int>(data['userId']),
        id: castToType<int>(data['id']),
        title: data['title'] as String?,
        completed: data['completed'] as bool?,
      );

  static TodoListModelStruct? maybeFromMap(dynamic data) => data is Map
      ? TodoListModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'userId': _userId,
        'id': _id,
        'title': _title,
        'completed': _completed,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'userId': serializeParam(
          _userId,
          ParamType.int,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'completed': serializeParam(
          _completed,
          ParamType.bool,
        ),
      }.withoutNulls;

  static TodoListModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      TodoListModelStruct(
        userId: deserializeParam(
          data['userId'],
          ParamType.int,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        completed: deserializeParam(
          data['completed'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'TodoListModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TodoListModelStruct &&
        userId == other.userId &&
        id == other.id &&
        title == other.title &&
        completed == other.completed;
  }

  @override
  int get hashCode => const ListEquality().hash([userId, id, title, completed]);
}

TodoListModelStruct createTodoListModelStruct({
  int? userId,
  int? id,
  String? title,
  bool? completed,
}) =>
    TodoListModelStruct(
      userId: userId,
      id: id,
      title: title,
      completed: completed,
    );
