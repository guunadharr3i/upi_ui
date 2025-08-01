// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FaceUserStruct extends BaseStruct {
  FaceUserStruct({
    bool? isLoggedIn,
    String? userId,
  })  : _isLoggedIn = isLoggedIn,
        _userId = userId;

  // "isLoggedIn" field.
  bool? _isLoggedIn;
  bool get isLoggedIn => _isLoggedIn ?? false;
  set isLoggedIn(bool? val) => _isLoggedIn = val;

  bool hasIsLoggedIn() => _isLoggedIn != null;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;

  bool hasUserId() => _userId != null;

  static FaceUserStruct fromMap(Map<String, dynamic> data) => FaceUserStruct(
        isLoggedIn: data['isLoggedIn'] as bool?,
        userId: data['userId'] as String?,
      );

  static FaceUserStruct? maybeFromMap(dynamic data) =>
      data is Map ? FaceUserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'isLoggedIn': _isLoggedIn,
        'userId': _userId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'isLoggedIn': serializeParam(
          _isLoggedIn,
          ParamType.bool,
        ),
        'userId': serializeParam(
          _userId,
          ParamType.String,
        ),
      }.withoutNulls;

  static FaceUserStruct fromSerializableMap(Map<String, dynamic> data) =>
      FaceUserStruct(
        isLoggedIn: deserializeParam(
          data['isLoggedIn'],
          ParamType.bool,
          false,
        ),
        userId: deserializeParam(
          data['userId'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FaceUserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FaceUserStruct &&
        isLoggedIn == other.isLoggedIn &&
        userId == other.userId;
  }

  @override
  int get hashCode => const ListEquality().hash([isLoggedIn, userId]);
}

FaceUserStruct createFaceUserStruct({
  bool? isLoggedIn,
  String? userId,
}) =>
    FaceUserStruct(
      isLoggedIn: isLoggedIn,
      userId: userId,
    );
