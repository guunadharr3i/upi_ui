import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';
import 'interceptors.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start UpiAPI Group Code

class UpiAPIGroup {
  static String getBaseUrl({
    String? token = '',
    String? deviceHash = '\"\${FFAppState().deviceHash}\"',
  }) =>
      'https://icmsuat.icicibank.com';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Authorization': '[token]',
    'DeviceHash': '[deviceHash]',
  };
  static LDAPAuthCall lDAPAuthCall = LDAPAuthCall();
  static TablesGetApiCallnCall tablesGetApiCallnCall = TablesGetApiCallnCall();
  static HostOpeartionsnCall hostOpeartionsnCall = HostOpeartionsnCall();
  static DeleteOperationApinCall deleteOperationApinCall =
      DeleteOperationApinCall();
  static PendingRequestApprovenCall pendingRequestApprovenCall =
      PendingRequestApprovenCall();
  static LogoutnCall logoutnCall = LogoutnCall();

  static final interceptors = [
    upiInterceptor(),
  ];
}

class LDAPAuthCall {
  Future<ApiCallResponse> call({
    String? userName = '',
    String? password = '',
    String? deviceHase = '',
    String? roleName = '',
    String? token = '',
    String? deviceHash = '\"\${FFAppState().deviceHash}\"',
  }) async {
    final baseUrl = UpiAPIGroup.getBaseUrl(
      token: token,
      deviceHash: deviceHash,
    );

    final ffApiRequestBody = '''
{
  "userName": "${escapeStringForJson(userName)}",
  "password": "${escapeStringForJson(password)}",
  "deviceHase": "${escapeStringForJson(deviceHase)}",
  "roleName": "${escapeStringForJson(roleName)}"
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'LDAPAuth',
        apiUrl: '${baseUrl}/upiauth/authenticate',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Content-Type': 'application/json',
          'Authorization': '${token}',
          'DeviceHash': '${deviceHash}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      UpiAPIGroup.interceptors,
    );
  }
}

class TablesGetApiCallnCall {
  Future<ApiCallResponse> call({
    String? tableCode = '',
    String? tempTableName = '',
    int? limit,
    int? offset,
    String? sortColumn = '',
    String? direction = '',
    String? filtersColumn = '',
    String? operator = '',
    String? filterValue = '',
    String? userId = '',
    String? token = '',
    String? deviceHash = '\"\${FFAppState().deviceHash}\"',
  }) async {
    final baseUrl = UpiAPIGroup.getBaseUrl(
      token: token,
      deviceHash: deviceHash,
    );

    final ffApiRequestBody = '''
{
  "tableCode": "${escapeStringForJson(tableCode)}",
  "tempTableName":"${escapeStringForJson(tempTableName)}" ,
  "limit": ${limit},
  "offset":${offset},
  "sort": {
    "column": "${escapeStringForJson(sortColumn)}",
    "direction": "${escapeStringForJson(direction)}"
  },
  "filters": [
    {
      "column": "${escapeStringForJson(filtersColumn)}",
      "operator": "${escapeStringForJson(operator)}",
      "value": "${escapeStringForJson(filterValue)}"
    }
  ]
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'TablesGetApiCalln',
        apiUrl: '${baseUrl}/upiapi/tableData',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Content-Type': 'application/json',
          'Authorization': '${token}',
          'DeviceHash': '${deviceHash}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      UpiAPIGroup.interceptors,
    );
  }
}

class HostOpeartionsnCall {
  Future<ApiCallResponse> call({
    String? operationType = '',
    dynamic dataJson,
    String? tableID = '',
    String? id = '',
    String? host = '',
    String? url = '',
    String? enableProxy = '',
    String? proxyAddress = '',
    String? proxyPort = '',
    String? protocol = '',
    String? method = '',
    String? truststorePath = '',
    String? truststorePassword = '',
    String? keystorePath = '',
    String? keystorePassword = '',
    String? readTimeout = '',
    String? connectTimeout = '',
    String? maxConnections = '',
    String? maxPerRoute = '',
    String? tlsVersion = '',
    String? editedBy = '',
    String? editedAt = '',
    String? token = '',
    String? deviceHash = '\"\${FFAppState().deviceHash}\"',
  }) async {
    final baseUrl = UpiAPIGroup.getBaseUrl(
      token: token,
      deviceHash: deviceHash,
    );

    final data = _serializeJson(dataJson);
    final ffApiRequestBody = '''
{
  "operationType": "${escapeStringForJson(operationType)}",
  "data": {
    "rawJson": ${data},
    "tableId":"${escapeStringForJson(tableID)}",
    "recordId": "${escapeStringForJson(id)}",
    "createdBy": "admin",
    "dateTime": "2025-07-23T16:00:00"
  }
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'HostOpeartionsn',
        apiUrl: '${baseUrl}/upiapi/operations',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Content-Type': 'application/json',
          'Authorization': '${token}',
          'DeviceHash': '${deviceHash}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      UpiAPIGroup.interceptors,
    );
  }
}

class DeleteOperationApinCall {
  Future<ApiCallResponse> call({
    String? operationType = '',
    String? tableId = '',
    String? createdBy = '',
    String? recordId = '',
    int? id,
    String? host = '',
    String? url = '',
    String? enableProxy = '',
    String? proxyAddress = '',
    String? proxyPort = '',
    String? protocol = '',
    String? method = '',
    String? truststorePath = '',
    String? keystorePath = '',
    String? keystorePassword = '',
    String? readTimeout = '',
    String? connectTimeout = '',
    String? maxConnections = '',
    String? maxPerRoute = '',
    String? tlsVersion = '',
    dynamic dataJson,
    String? token = '',
    String? deviceHash = '\"\${FFAppState().deviceHash}\"',
  }) async {
    final baseUrl = UpiAPIGroup.getBaseUrl(
      token: token,
      deviceHash: deviceHash,
    );

    final data = _serializeJson(dataJson);
    final ffApiRequestBody = '''
{
  "operationType": "${escapeStringForJson(operationType)}",
  "data": {
     "tableId": "${escapeStringForJson(tableId)}",
    "createdBy": "${escapeStringForJson(createdBy)}",
    "recordId": "${escapeStringForJson(recordId)}"
  }
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'DeleteOperationApin',
        apiUrl: '${baseUrl}/upiapi/operations',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Content-Type': 'application/json',
          'Authorization': '${token}',
          'DeviceHash': '${deviceHash}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      UpiAPIGroup.interceptors,
    );
  }
}

class PendingRequestApprovenCall {
  Future<ApiCallResponse> call({
    String? tableId = '',
    String? recordId = '',
    String? action = '',
    String? userId = '',
    String? token = '',
    String? deviceHash = '\"\${FFAppState().deviceHash}\"',
  }) async {
    final baseUrl = UpiAPIGroup.getBaseUrl(
      token: token,
      deviceHash: deviceHash,
    );

    final ffApiRequestBody = '''
{
  "tableId": "${escapeStringForJson(tableId)}",
  "recordId": "${escapeStringForJson(recordId)}",
  "action": "${escapeStringForJson(action)}",
  "userId": "${escapeStringForJson(userId)}"
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'PendingRequestApproven',
        apiUrl: '${baseUrl}upi_maker_cheker/approval-action',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Content-Type': 'application/json',
          'Authorization': '${token}',
          'DeviceHash': '${deviceHash}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      UpiAPIGroup.interceptors,
    );
  }
}

class LogoutnCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? deviceHash = '\"\${FFAppState().deviceHash}\"',
  }) async {
    final baseUrl = UpiAPIGroup.getBaseUrl(
      token: token,
      deviceHash: deviceHash,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'Logoutn',
        apiUrl: '${baseUrl}/upiauth/logout',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Content-Type': 'application/json',
          'Authorization': '${token}',
          'DeviceHash': '${deviceHash}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        bodyType: BodyType.NONE,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      UpiAPIGroup.interceptors,
    );
  }
}

/// End UpiAPI Group Code

class GetEmployeeListCall {
  static Future<ApiCallResponse> call() async {
    final ffApiRequestBody = '''
{
   "tableCode": "UPIHOST",
   "limit": 100,
   "offset": 0,
   "sort": {
     "column": "ID",
     "direction": "asc"
   },
   "filters": [
 
   ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetEmployeeList',
      apiUrl: 'http://10.11.100.46:8001/upiapi/tableData',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
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

class TablesGetApiCallCall {
  static Future<ApiCallResponse> call({
    String? tableCode = '',
    int? limit,
    int? offset,
    String? sortColumn = '',
    String? direction = '',
    String? filtersColumn = '',
    String? filterValue = '',
    String? userId = '',
    String? operator = '',
    String? tempTableName = '',
    String? token = '',
    String? deviceHash = '',
    String? headerURL,
    String? baseURL,
  }) async {
    headerURL ??= FFDevEnvironmentValues().erURL;
    baseURL ??= FFDevEnvironmentValues().baseUrl;

    final ffApiRequestBody = '''
{
  "tableCode": "${tableCode}",
  "tempTableName": "${tempTableName}",
  "userId": "${userId}",
  "limit": ${limit},
  "offset": ${offset},
  "sort": {
    "column": "${sortColumn}",
    "direction": "${direction}"
  },
  "filters": [
    {
      "column": "${filtersColumn}",
      "operator": "${operator}",
      "value": "${filterValue}"
    }
  ]
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'TablesGetApiCall',
        apiUrl: '${baseURL}upiapi/tableData',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Content-Type': 'application/json',
          'Authorization': '${token}',
          'DeviceHash': '${deviceHash}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      interceptors,
    );
  }

  static final interceptors = [
    upiInterceptor(),
  ];
}

class PendingRequestCountCall {
  static Future<ApiCallResponse> call({
    String? tableCode = '',
    int? limit,
    int? offset,
    String? sortColumn = '',
    String? direction = '',
    String? filtersColumn = '',
    String? filterValue = '',
    String? userId = '',
    String? operator = '',
    String? tempTableName = '',
    String? token = '',
    String? deviceHash = '',
    String? headerURL,
    String? baseURL,
  }) async {
    headerURL ??= FFDevEnvironmentValues().erURL;
    baseURL ??= FFDevEnvironmentValues().baseUrl;

    final ffApiRequestBody = '''
{
  "userId": "${userId}",
  "tableIds": [
    "UPIHOST",
    "SYS",
    "UPISMS",
    "UPICOUNTRY",
    "UPICOMPLAINT",
    "UPISOURCESUB",
    "UPIFRM",
    "UPIINTEROPERABLE",
    "UPIBANK",
    "UPITRANSACTION",
    "UPISOURCECHANNELS"
  ]
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'PendingRequestCount',
        apiUrl: '${baseURL}upiapi/upiTempCount',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Content-Type': 'application/json',
          'Authorization': '${token}',
          'DeviceHash': '${deviceHash}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      interceptors,
    );
  }

  static final interceptors = [
    upiInterceptor(),
  ];
}

class MockUPICall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'mockUPI',
      apiUrl: 'https://mocki.io/v1/734869e0-b933-477f-9424-fa5838386718',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? fields(dynamic response) => (getJsonField(
        response,
        r'''$.metaData[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? meta(dynamic response) => getJsonField(
        response,
        r'''$.metaData''',
        true,
      ) as List?;
  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].ID''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? connectTimeout(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].CONNECT_TIMEOUT''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? host(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].HOST''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static dynamic all(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class TestMocklCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'testMockl',
      apiUrl: 'https://mocki.io/v1/734869e0-b933-477f-9424-fa5838386718',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateUPIHostTableCall {
  static Future<ApiCallResponse> call({
    int? id,
    int? connectTimeout,
    String? enableProxy = '',
    String? host = '',
    String? keystorePassword = '',
    String? keystorePath = '',
    int? maxConnections,
    int? maxPerRoute,
    String? method = '',
    String? protocol = '',
    String? proxyAddress = '',
    int? proxyPort,
    int? readTimeout,
    String? tlsVersion = '',
    String? truststorePassword = '',
    String? truststorePath = '',
    String? url = '',
  }) async {
    final ffApiRequestBody = '''
{
  "ID": ${id},
  "CONNECT_TIMEOUT": ${connectTimeout},
  "ENABLE_PROXY": "${enableProxy}",
  "HOST": "${host}",
  "KEYSTORE_PASSWORD": "${keystorePassword}",
  "KEYSTORE_PATH": "${keystorePath}",
  "MAX_CONNECTIONS": ${maxConnections},
  "MAX_PER_ROUTE": ${maxPerRoute},
  "METHOD": "${method}",
  "PROTOCOL": "${protocol}",
  "PROXY_ADDRESS": "${proxyAddress}",
  "PROXY_PORT": ${proxyPort},
  "READ_TIMEOUT": ${readTimeout},
  "TLS_VERSION": "${tlsVersion}",
  "TRUSTSTORE_PASSWORD": "${truststorePassword}",
  "TRUSTSTORE_PATH": "${truststorePath}",
  "URL": "${url}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateUPIHostTable',
      apiUrl: 'https://icmsuat.icicibank.com/upiapi/updateUpiHostTable',
      callType: ApiCallType.PUT,
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

class IDmappingCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'IDmapping',
      apiUrl: 'https://mocki.io/v1/a54b1788-67ec-40f1-bf79-849f1e7afc51',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? abt(dynamic response) => getJsonField(
        response,
        r'''$.accessByTable''',
        true,
      ) as List?;
  static List<String>? tableList(dynamic response) => (getJsonField(
        response,
        r'''$.accessByTable[:].tableId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class HostOpeartionsCall {
  static Future<ApiCallResponse> call({
    String? operationType = '',
    String? id = '',
    String? host = '',
    String? url = '',
    String? enableProxy = '',
    String? proxyAddress = '',
    String? proxyPort = '',
    String? protocol = '',
    String? method = '',
    String? truststorePath = '',
    String? truststorePassword = '',
    String? keystorePath = '',
    String? keystorePassword = '',
    String? readTimeout = '',
    String? connectTimeout = '',
    String? maxConnections = '',
    String? maxPerRoute = '',
    String? tlsVersion = '',
    String? editedBy = '',
    String? editedAt = '',
    dynamic dataJson,
    String? tableID = '',
    String? dateTime = '',
    String? headerURL,
    String? baseURL,
  }) async {
    headerURL ??= FFDevEnvironmentValues().erURL;
    baseURL ??= FFDevEnvironmentValues().baseUrl;

    final data = _serializeJson(dataJson);
    final ffApiRequestBody = '''
{
  "operationType": "${operationType}",
  "data": {
    "rawJson": ${data},
    "tableId": "${tableID}",
    "recordId": "${id}",
    "createdBy": "${editedBy}",
    "dateTime": "${dateTime}"
  }
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'HostOpeartions',
        apiUrl: '${baseURL}upiapi/operations',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {},
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      interceptors,
    );
  }

  static final interceptors = [
    upiInterceptor(),
  ];
}

class DeleteOperationApiCall {
  static Future<ApiCallResponse> call({
    dynamic dataJson,
    int? id,
    String? host = '',
    String? url = '',
    String? operationType = '',
    String? enableProxy = '',
    String? proxyAddress = '',
    String? proxyPort = '',
    String? protocol = '',
    String? method = '',
    String? truststorePath = '',
    String? keystorePath = '',
    String? keystorePassword = '',
    String? readTimeout = '',
    String? connectTimeout = '',
    String? maxConnections = '',
    String? maxPerRoute = '',
    String? tlsVersion = '',
    String? editedBy = '',
    String? editedAt = '',
    String? truststorePassword = '',
    String? tableId = '',
    String? recordId = '',
    String? createdBy = '',
    String? token = '',
    String? deviceHash = '',
    String? headerURL,
    String? baseURL,
  }) async {
    headerURL ??= FFDevEnvironmentValues().erURL;
    baseURL ??= FFDevEnvironmentValues().baseUrl;

    final data = _serializeJson(dataJson);
    final ffApiRequestBody = '''
{
  "operationType": "${operationType}",
  "data": {
     "tableId": "${tableId}",
    "createdBy": "${createdBy}",
    "recordId": "${recordId}"
  }
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'DeleteOperationApi',
        apiUrl: '${baseURL}upiapi/operations',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Content-Type': 'application/json',
          'Authorization': '${token}',
          'DeviceHash': '${deviceHash}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      interceptors,
    );
  }

  static final interceptors = [
    upiInterceptor(),
  ];
}

class PendingRequestApproveCall {
  static Future<ApiCallResponse> call({
    String? tableId = '',
    String? recordId = '',
    String? action = '',
    String? userId = '',
    String? token = '',
    String? deviceHash = '',
    String? headerURL,
    String? baseURL,
  }) async {
    headerURL ??= FFDevEnvironmentValues().erURL;
    baseURL ??= FFDevEnvironmentValues().baseUrl;

    final ffApiRequestBody = '''
{
  "tableId": "${tableId}",
  "recordId": "${recordId}",
  "action": "${action}",
  "userId": "${userId}"
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'PendingRequestApprove',
        apiUrl: '${baseURL}upi_maker_checker/approval-action',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Content-Type': 'application/json',
          'Authorization': '${token}',
          'DeviceHash': '${deviceHash}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      interceptors,
    );
  }

  static final interceptors = [
    upiInterceptor(),
  ];
}

class LogoutCall {
  static Future<ApiCallResponse> call({
    String? baseURL,
  }) async {
    baseURL ??= FFDevEnvironmentValues().baseUrl;

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'Logout',
        apiUrl: '${baseURL}upiauth/logout',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {},
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      interceptors,
    );
  }

  static final interceptors = [
    upiInterceptor(),
  ];
}

class UserAccessMOCKCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'userAccessMOCK',
      apiUrl: 'https://mocki.io/v1/3e3f04a0-51a9-464d-a54c-ec82a793cbdd',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? userTableAccess(dynamic response) => getJsonField(
        response,
        r'''$.accessByTable''',
        true,
      ) as List?;
}

class UserMockCall {
  static Future<ApiCallResponse> call({
    String? header,
  }) async {
    header ??= FFDevEnvironmentValues().url;

    return ApiManager.instance.makeApiCall(
      callName: 'userMock',
      apiUrl: '${header}operations',
      callType: ApiCallType.GET,
      headers: {
        'urlHeader': '${header}',
      },
      params: {},
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

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
