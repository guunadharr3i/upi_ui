// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UPIHostDataModelStruct extends BaseStruct {
  UPIHostDataModelStruct({
    int? id,
    int? connectTimeout,
    String? enableProxy,
    String? host,
    String? keystorePassword,
    String? keystorePath,
    String? maxConnections,
    String? maxPerRoute,
    String? method,
    String? protocol,
    String? proxyAddress,
    int? proxyPort,
    int? readTimeout,
    String? tlsVersion,
    String? truststorePassword,
    String? truststorePath,
    String? url,
  })  : _id = id,
        _connectTimeout = connectTimeout,
        _enableProxy = enableProxy,
        _host = host,
        _keystorePassword = keystorePassword,
        _keystorePath = keystorePath,
        _maxConnections = maxConnections,
        _maxPerRoute = maxPerRoute,
        _method = method,
        _protocol = protocol,
        _proxyAddress = proxyAddress,
        _proxyPort = proxyPort,
        _readTimeout = readTimeout,
        _tlsVersion = tlsVersion,
        _truststorePassword = truststorePassword,
        _truststorePath = truststorePath,
        _url = url;

  // "ID" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "CONNECT_TIMEOUT" field.
  int? _connectTimeout;
  int get connectTimeout => _connectTimeout ?? 0;
  set connectTimeout(int? val) => _connectTimeout = val;

  void incrementConnectTimeout(int amount) =>
      connectTimeout = connectTimeout + amount;

  bool hasConnectTimeout() => _connectTimeout != null;

  // "ENABLE_PROXY" field.
  String? _enableProxy;
  String get enableProxy => _enableProxy ?? '';
  set enableProxy(String? val) => _enableProxy = val;

  bool hasEnableProxy() => _enableProxy != null;

  // "HOST" field.
  String? _host;
  String get host => _host ?? '';
  set host(String? val) => _host = val;

  bool hasHost() => _host != null;

  // "KEYSTORE_PASSWORD" field.
  String? _keystorePassword;
  String get keystorePassword => _keystorePassword ?? '';
  set keystorePassword(String? val) => _keystorePassword = val;

  bool hasKeystorePassword() => _keystorePassword != null;

  // "KEYSTORE_PATH" field.
  String? _keystorePath;
  String get keystorePath => _keystorePath ?? '';
  set keystorePath(String? val) => _keystorePath = val;

  bool hasKeystorePath() => _keystorePath != null;

  // "MAX_CONNECTIONS" field.
  String? _maxConnections;
  String get maxConnections => _maxConnections ?? '';
  set maxConnections(String? val) => _maxConnections = val;

  bool hasMaxConnections() => _maxConnections != null;

  // "MAX_PER_ROUTE" field.
  String? _maxPerRoute;
  String get maxPerRoute => _maxPerRoute ?? '';
  set maxPerRoute(String? val) => _maxPerRoute = val;

  bool hasMaxPerRoute() => _maxPerRoute != null;

  // "METHOD" field.
  String? _method;
  String get method => _method ?? '';
  set method(String? val) => _method = val;

  bool hasMethod() => _method != null;

  // "PROTOCOL" field.
  String? _protocol;
  String get protocol => _protocol ?? '';
  set protocol(String? val) => _protocol = val;

  bool hasProtocol() => _protocol != null;

  // "PROXY_ADDRESS" field.
  String? _proxyAddress;
  String get proxyAddress => _proxyAddress ?? '';
  set proxyAddress(String? val) => _proxyAddress = val;

  bool hasProxyAddress() => _proxyAddress != null;

  // "PROXY_PORT" field.
  int? _proxyPort;
  int get proxyPort => _proxyPort ?? 0;
  set proxyPort(int? val) => _proxyPort = val;

  void incrementProxyPort(int amount) => proxyPort = proxyPort + amount;

  bool hasProxyPort() => _proxyPort != null;

  // "READ_TIMEOUT" field.
  int? _readTimeout;
  int get readTimeout => _readTimeout ?? 0;
  set readTimeout(int? val) => _readTimeout = val;

  void incrementReadTimeout(int amount) => readTimeout = readTimeout + amount;

  bool hasReadTimeout() => _readTimeout != null;

  // "TLS_VERSION" field.
  String? _tlsVersion;
  String get tlsVersion => _tlsVersion ?? '';
  set tlsVersion(String? val) => _tlsVersion = val;

  bool hasTlsVersion() => _tlsVersion != null;

  // "TRUSTSTORE_PASSWORD" field.
  String? _truststorePassword;
  String get truststorePassword => _truststorePassword ?? '';
  set truststorePassword(String? val) => _truststorePassword = val;

  bool hasTruststorePassword() => _truststorePassword != null;

  // "TRUSTSTORE_PATH" field.
  String? _truststorePath;
  String get truststorePath => _truststorePath ?? '';
  set truststorePath(String? val) => _truststorePath = val;

  bool hasTruststorePath() => _truststorePath != null;

  // "URL" field.
  String? _url;
  String get url => _url ?? '';
  set url(String? val) => _url = val;

  bool hasUrl() => _url != null;

  static UPIHostDataModelStruct fromMap(Map<String, dynamic> data) =>
      UPIHostDataModelStruct(
        id: castToType<int>(data['ID']),
        connectTimeout: castToType<int>(data['CONNECT_TIMEOUT']),
        enableProxy: data['ENABLE_PROXY'] as String?,
        host: data['HOST'] as String?,
        keystorePassword: data['KEYSTORE_PASSWORD'] as String?,
        keystorePath: data['KEYSTORE_PATH'] as String?,
        maxConnections: data['MAX_CONNECTIONS'] as String?,
        maxPerRoute: data['MAX_PER_ROUTE'] as String?,
        method: data['METHOD'] as String?,
        protocol: data['PROTOCOL'] as String?,
        proxyAddress: data['PROXY_ADDRESS'] as String?,
        proxyPort: castToType<int>(data['PROXY_PORT']),
        readTimeout: castToType<int>(data['READ_TIMEOUT']),
        tlsVersion: data['TLS_VERSION'] as String?,
        truststorePassword: data['TRUSTSTORE_PASSWORD'] as String?,
        truststorePath: data['TRUSTSTORE_PATH'] as String?,
        url: data['URL'] as String?,
      );

  static UPIHostDataModelStruct? maybeFromMap(dynamic data) => data is Map
      ? UPIHostDataModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ID': _id,
        'CONNECT_TIMEOUT': _connectTimeout,
        'ENABLE_PROXY': _enableProxy,
        'HOST': _host,
        'KEYSTORE_PASSWORD': _keystorePassword,
        'KEYSTORE_PATH': _keystorePath,
        'MAX_CONNECTIONS': _maxConnections,
        'MAX_PER_ROUTE': _maxPerRoute,
        'METHOD': _method,
        'PROTOCOL': _protocol,
        'PROXY_ADDRESS': _proxyAddress,
        'PROXY_PORT': _proxyPort,
        'READ_TIMEOUT': _readTimeout,
        'TLS_VERSION': _tlsVersion,
        'TRUSTSTORE_PASSWORD': _truststorePassword,
        'TRUSTSTORE_PATH': _truststorePath,
        'URL': _url,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ID': serializeParam(
          _id,
          ParamType.int,
        ),
        'CONNECT_TIMEOUT': serializeParam(
          _connectTimeout,
          ParamType.int,
        ),
        'ENABLE_PROXY': serializeParam(
          _enableProxy,
          ParamType.String,
        ),
        'HOST': serializeParam(
          _host,
          ParamType.String,
        ),
        'KEYSTORE_PASSWORD': serializeParam(
          _keystorePassword,
          ParamType.String,
        ),
        'KEYSTORE_PATH': serializeParam(
          _keystorePath,
          ParamType.String,
        ),
        'MAX_CONNECTIONS': serializeParam(
          _maxConnections,
          ParamType.String,
        ),
        'MAX_PER_ROUTE': serializeParam(
          _maxPerRoute,
          ParamType.String,
        ),
        'METHOD': serializeParam(
          _method,
          ParamType.String,
        ),
        'PROTOCOL': serializeParam(
          _protocol,
          ParamType.String,
        ),
        'PROXY_ADDRESS': serializeParam(
          _proxyAddress,
          ParamType.String,
        ),
        'PROXY_PORT': serializeParam(
          _proxyPort,
          ParamType.int,
        ),
        'READ_TIMEOUT': serializeParam(
          _readTimeout,
          ParamType.int,
        ),
        'TLS_VERSION': serializeParam(
          _tlsVersion,
          ParamType.String,
        ),
        'TRUSTSTORE_PASSWORD': serializeParam(
          _truststorePassword,
          ParamType.String,
        ),
        'TRUSTSTORE_PATH': serializeParam(
          _truststorePath,
          ParamType.String,
        ),
        'URL': serializeParam(
          _url,
          ParamType.String,
        ),
      }.withoutNulls;

  static UPIHostDataModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      UPIHostDataModelStruct(
        id: deserializeParam(
          data['ID'],
          ParamType.int,
          false,
        ),
        connectTimeout: deserializeParam(
          data['CONNECT_TIMEOUT'],
          ParamType.int,
          false,
        ),
        enableProxy: deserializeParam(
          data['ENABLE_PROXY'],
          ParamType.String,
          false,
        ),
        host: deserializeParam(
          data['HOST'],
          ParamType.String,
          false,
        ),
        keystorePassword: deserializeParam(
          data['KEYSTORE_PASSWORD'],
          ParamType.String,
          false,
        ),
        keystorePath: deserializeParam(
          data['KEYSTORE_PATH'],
          ParamType.String,
          false,
        ),
        maxConnections: deserializeParam(
          data['MAX_CONNECTIONS'],
          ParamType.String,
          false,
        ),
        maxPerRoute: deserializeParam(
          data['MAX_PER_ROUTE'],
          ParamType.String,
          false,
        ),
        method: deserializeParam(
          data['METHOD'],
          ParamType.String,
          false,
        ),
        protocol: deserializeParam(
          data['PROTOCOL'],
          ParamType.String,
          false,
        ),
        proxyAddress: deserializeParam(
          data['PROXY_ADDRESS'],
          ParamType.String,
          false,
        ),
        proxyPort: deserializeParam(
          data['PROXY_PORT'],
          ParamType.int,
          false,
        ),
        readTimeout: deserializeParam(
          data['READ_TIMEOUT'],
          ParamType.int,
          false,
        ),
        tlsVersion: deserializeParam(
          data['TLS_VERSION'],
          ParamType.String,
          false,
        ),
        truststorePassword: deserializeParam(
          data['TRUSTSTORE_PASSWORD'],
          ParamType.String,
          false,
        ),
        truststorePath: deserializeParam(
          data['TRUSTSTORE_PATH'],
          ParamType.String,
          false,
        ),
        url: deserializeParam(
          data['URL'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UPIHostDataModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UPIHostDataModelStruct &&
        id == other.id &&
        connectTimeout == other.connectTimeout &&
        enableProxy == other.enableProxy &&
        host == other.host &&
        keystorePassword == other.keystorePassword &&
        keystorePath == other.keystorePath &&
        maxConnections == other.maxConnections &&
        maxPerRoute == other.maxPerRoute &&
        method == other.method &&
        protocol == other.protocol &&
        proxyAddress == other.proxyAddress &&
        proxyPort == other.proxyPort &&
        readTimeout == other.readTimeout &&
        tlsVersion == other.tlsVersion &&
        truststorePassword == other.truststorePassword &&
        truststorePath == other.truststorePath &&
        url == other.url;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        connectTimeout,
        enableProxy,
        host,
        keystorePassword,
        keystorePath,
        maxConnections,
        maxPerRoute,
        method,
        protocol,
        proxyAddress,
        proxyPort,
        readTimeout,
        tlsVersion,
        truststorePassword,
        truststorePath,
        url
      ]);
}

UPIHostDataModelStruct createUPIHostDataModelStruct({
  int? id,
  int? connectTimeout,
  String? enableProxy,
  String? host,
  String? keystorePassword,
  String? keystorePath,
  String? maxConnections,
  String? maxPerRoute,
  String? method,
  String? protocol,
  String? proxyAddress,
  int? proxyPort,
  int? readTimeout,
  String? tlsVersion,
  String? truststorePassword,
  String? truststorePath,
  String? url,
}) =>
    UPIHostDataModelStruct(
      id: id,
      connectTimeout: connectTimeout,
      enableProxy: enableProxy,
      host: host,
      keystorePassword: keystorePassword,
      keystorePath: keystorePath,
      maxConnections: maxConnections,
      maxPerRoute: maxPerRoute,
      method: method,
      protocol: protocol,
      proxyAddress: proxyAddress,
      proxyPort: proxyPort,
      readTimeout: readTimeout,
      tlsVersion: tlsVersion,
      truststorePassword: truststorePassword,
      truststorePath: truststorePath,
      url: url,
    );
