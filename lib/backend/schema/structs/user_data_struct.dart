// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserDataStruct extends BaseStruct {
  UserDataStruct({
    int? id,
    String? userId,
    String? password,
    String? userName,
  })  : _id = id,
        _userId = userId,
        _password = password,
        _userName = userName;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;
  bool hasUserId() => _userId != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  set password(String? val) => _password = val;
  bool hasPassword() => _password != null;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  set userName(String? val) => _userName = val;
  bool hasUserName() => _userName != null;

  static UserDataStruct fromMap(Map<String, dynamic> data) => UserDataStruct(
        id: castToType<int>(data['id']),
        userId: data['userId'] as String?,
        password: data['password'] as String?,
        userName: data['userName'] as String?,
      );

  static UserDataStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? UserDataStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'userId': _userId,
        'password': _password,
        'userName': _userName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'userId': serializeParam(
          _userId,
          ParamType.String,
        ),
        'password': serializeParam(
          _password,
          ParamType.String,
        ),
        'userName': serializeParam(
          _userName,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserDataStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        userId: deserializeParam(
          data['userId'],
          ParamType.String,
          false,
        ),
        password: deserializeParam(
          data['password'],
          ParamType.String,
          false,
        ),
        userName: deserializeParam(
          data['userName'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserDataStruct &&
        id == other.id &&
        userId == other.userId &&
        password == other.password &&
        userName == other.userName;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, userId, password, userName]);
}

UserDataStruct createUserDataStruct({
  int? id,
  String? userId,
  String? password,
  String? userName,
}) =>
    UserDataStruct(
      id: id,
      userId: userId,
      password: password,
      userName: userName,
    );
