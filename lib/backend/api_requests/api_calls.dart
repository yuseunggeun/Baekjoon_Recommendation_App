import 'dart:convert';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start api Group Code

class ApiGroup {
  static String baseUrl = '124.53.141.143:8080';
  static Map<String, String> headers = {};
}

/// End api Group Code

/// Start problem Group Code

class ProblemGroup {
  static String baseUrl = 'http://192.168.219.101:8088/problem';
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
      headers: {
        'Access-Control-Allow-Origin': '*',
        'Accept': '*/*',
      },
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
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End problem Group Code

class GetBookmarksCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getBookmarks',
      apiUrl: '192.168.219.101:8088/bookmark',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetProblemDetailTestCall {
  static Future<ApiCallResponse> call({
    int? id,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getProblemDetailTest',
      apiUrl: '127.0.0.1:8088/problem/$id',
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
