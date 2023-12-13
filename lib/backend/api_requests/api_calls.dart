import 'dart:convert';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start problem Group Code

class ProblemGroup {
  static String baseUrl = 'http://43.201.181.135:8088/problem';
  static Map<String, String> headers = {};
  static ProblemSearchCall problemSearchCall = ProblemSearchCall();
  static GetProblemDetailCall getProblemDetailCall = GetProblemDetailCall();
  static TestCall testCall = TestCall();
}

class ProblemSearchCall {
  Future<ApiCallResponse> call({
    int? minDifficulty,
    int? maxDifficulty,
    int? minSolveCount,
    int? maxSolveCount,
    String? logical = '',
    List<String>? tagsList,
  }) async {
    final tags = _serializeList(tagsList);

    final ffApiRequestBody = '''
{
  "minDifficulty": $minDifficulty,
  "maxDifficulty": $maxDifficulty,
  "minSolveCount": $minSolveCount,
  "maxSolveCount": $maxSolveCount,
  "logical": "$logical",
  "tags": $tags
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'problemSearch',
      apiUrl: '${ProblemGroup.baseUrl}/search',
      callType: ApiCallType.POST,
      headers: {
        'Access-Control-Allow-Origin': '*',
        'Content-Type': 'application/json',
        'Accept': '*/*',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
    );
  }
}

class GetProblemDetailCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getProblemDetail',
      apiUrl: '${ProblemGroup.baseUrl}/$id',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }
}

class TestCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'test',
      apiUrl: '${ProblemGroup.baseUrl}/test',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }
}

/// End problem Group Code

/// Start user Group Code

class UserGroup {
  static String baseUrl = 'http://43.201.181.135:8088/user';
  static Map<String, String> headers = {};
  static LoginCall loginCall = LoginCall();
  static SignupCall signupCall = SignupCall();
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "userId": "$userId",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: '${UserGroup.baseUrl}/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
    );
  }
}

class SignupCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? password = '',
    String? name = '',
  }) async {
    final ffApiRequestBody = '''
{
  "userId": "$userId",
  "password": "$password",
  "name": "$name"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'signup',
      apiUrl: '${UserGroup.baseUrl}/signup',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
    );
  }
}

/// End user Group Code

/// Start bookmark Group Code

class BookmarkGroup {
  static String baseUrl = 'http://43.201.181.135:8088/bookmark';
  static Map<String, String> headers = {
    'userId': '[userId]',
    'password': '[password]',
  };
  static GetBookmarkCall getBookmarkCall = GetBookmarkCall();
  static GetBookamarkDetailCall getBookamarkDetailCall =
      GetBookamarkDetailCall();
  static AddBookmarkCall addBookmarkCall = AddBookmarkCall();
  static DeleteBookmarkCall deleteBookmarkCall = DeleteBookmarkCall();
  static UpdateBookmarkCall updateBookmarkCall = UpdateBookmarkCall();
}

class GetBookmarkCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? password = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getBookmark',
      apiUrl: '${BookmarkGroup.baseUrl}/bookmarks',
      callType: ApiCallType.GET,
      headers: {
        'userId': '$userId',
        'password': '$password',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }
}

class GetBookamarkDetailCall {
  Future<ApiCallResponse> call({
    int? bookmarkId,
    String? userId = '',
    String? password = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getBookamarkDetail',
      apiUrl: '${BookmarkGroup.baseUrl}/$bookmarkId',
      callType: ApiCallType.GET,
      headers: {
        'userId': '$userId',
        'password': '$password',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }
}

class AddBookmarkCall {
  Future<ApiCallResponse> call({
    int? problemId,
    String? title = '',
    int? difficulty,
    int? solveCount,
    String? userId = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "problemId": $problemId,
  "title": "$title",
  "difficulty": $difficulty,
  "solveCount": $solveCount
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addBookmark',
      apiUrl: '${BookmarkGroup.baseUrl}/$problemId',
      callType: ApiCallType.POST,
      headers: {
        'userId': '$userId',
        'password': '$password',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
    );
  }
}

class DeleteBookmarkCall {
  Future<ApiCallResponse> call({
    int? bookmarkId,
    String? userId = '',
    String? password = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'deleteBookmark',
      apiUrl: '${BookmarkGroup.baseUrl}/$bookmarkId',
      callType: ApiCallType.DELETE,
      headers: {
        'userId': '$userId',
        'password': '$password',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }
}

class UpdateBookmarkCall {
  Future<ApiCallResponse> call({
    int? bookmarkId,
    String? memo = '',
    String? userId = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "memo": "$memo"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateBookmark',
      apiUrl: '${BookmarkGroup.baseUrl}/$bookmarkId',
      callType: ApiCallType.PUT,
      headers: {
        'userId': '$userId',
        'password': '$password',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
    );
  }
}

/// End bookmark Group Code

/// Start solved Group Code

class SolvedGroup {
  static String baseUrl = 'http://43.201.181.135:8088/solved';
  static Map<String, String> headers = {
    'userId': '[userId]',
    'password': '[password]',
  };
  static GetSolvesCall getSolvesCall = GetSolvesCall();
  static AddSolvedCall addSolvedCall = AddSolvedCall();
  static UpdateSolvedCall updateSolvedCall = UpdateSolvedCall();
}

class GetSolvesCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? password = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getSolves',
      apiUrl: '${SolvedGroup.baseUrl}/solve',
      callType: ApiCallType.GET,
      headers: {
        'userId': '$userId',
        'password': '$password',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }
}

class AddSolvedCall {
  Future<ApiCallResponse> call({
    int? problemId,
    String? title = '',
    int? diffuculty,
    int? elapsedTime,
    String? userId = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "problemId": $problemId,
  "title": "$title",
  "difficulty": $diffuculty,
  "elapsedTime": $elapsedTime
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addSolved',
      apiUrl: '${SolvedGroup.baseUrl}/$problemId',
      callType: ApiCallType.POST,
      headers: {
        'userId': '$userId',
        'password': '$password',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
    );
  }
}

class UpdateSolvedCall {
  Future<ApiCallResponse> call({
    int? solvedId,
    String? memo = '',
    String? userId = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "memo": "$memo"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateSolved',
      apiUrl: '${SolvedGroup.baseUrl}/$solvedId',
      callType: ApiCallType.PUT,
      headers: {
        'userId': '$userId',
        'password': '$password',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
    );
  }
}

/// End solved Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
