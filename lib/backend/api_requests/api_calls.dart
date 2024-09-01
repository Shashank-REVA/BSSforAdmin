import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start BF - csvExport Group Code

class BFCsvExportGroup {
  static String getBaseUrl() => 'https://api.backendflow.io/v1';
  static Map<String, String> headers = {};
  static CsvExportCall csvExportCall = CsvExportCall();
}

class CsvExportCall {
  Future<ApiCallResponse> call({
    String? collectionName = '',
    String? fields = '',
    String? orderBy = '',
    String? limit = '',
  }) async {
    final baseUrl = BFCsvExportGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "sk-bf-9a0baaf3-deb3-4037-9f2d-46331a067bb8": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'csvExport',
      apiUrl:
          '${baseUrl}/csvExport?collectionName=${collectionName}&fields=${fields}&orderBy=${orderBy}&limit=${limit}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End BF - csvExport Group Code

class ConfirmCall {
  static Future<ApiCallResponse> call({
    String? email = 'shashanksunny2003@gmai.com',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Confirm',
      apiUrl: 'https://spacemanapi.pythonanywhere.com/confirm',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'email': email,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CancelCall {
  static Future<ApiCallResponse> call({
    String? email = 'shashanksunny2003@gmail.com',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Cancel',
      apiUrl: 'https://spacemanapi.pythonanywhere.com/cancel',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'email': email,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
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

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
