import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _userid = prefs.getString('ff_userid') ?? _userid;
    });
    _safeInit(() {
      _token = prefs.getString('ff_token') ?? _token;
    });
    _safeInit(() {
      _deviceHash = prefs.getString('ff_deviceHash') ?? _deviceHash;
    });
    _safeInit(() {
      _lastLogin = prefs.getString('ff_lastLogin') ?? _lastLogin;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<String> _headers = [
    'Title',
    'Num of emp',
    'Present',
    'All clear',
    'Test1',
    'Test2',
    'Test3',
    'Test4',
    'Action'
  ];
  List<String> get headers => _headers;
  set headers(List<String> value) {
    _headers = value;
  }

  void addToHeaders(String value) {
    headers.add(value);
  }

  void removeFromHeaders(String value) {
    headers.remove(value);
  }

  void removeAtIndexFromHeaders(int index) {
    headers.removeAt(index);
  }

  void updateHeadersAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    headers[index] = updateFn(_headers[index]);
  }

  void insertAtIndexInHeaders(int index, String value) {
    headers.insert(index, value);
  }

  List<DataTableModelStruct> _dataTableList = [
    DataTableModelStruct.fromSerializableMap(jsonDecode(
        '{\"modelList\":\"[\\\"Hello World1\\\",\\\"Hello World2\\\",\\\"Hello World3\\\",\\\"Hello World4\\\"]\"}')),
    DataTableModelStruct.fromSerializableMap(jsonDecode(
        '{\"modelList\":\"[\\\"Hello World\\\",\\\"Hello World\\\",\\\"Hello World\\\",\\\"Hello World\\\"]\"}'))
  ];
  List<DataTableModelStruct> get dataTableList => _dataTableList;
  set dataTableList(List<DataTableModelStruct> value) {
    _dataTableList = value;
  }

  void addToDataTableList(DataTableModelStruct value) {
    dataTableList.add(value);
  }

  void removeFromDataTableList(DataTableModelStruct value) {
    dataTableList.remove(value);
  }

  void removeAtIndexFromDataTableList(int index) {
    dataTableList.removeAt(index);
  }

  void updateDataTableListAtIndex(
    int index,
    DataTableModelStruct Function(DataTableModelStruct) updateFn,
  ) {
    dataTableList[index] = updateFn(_dataTableList[index]);
  }

  void insertAtIndexInDataTableList(int index, DataTableModelStruct value) {
    dataTableList.insert(index, value);
  }

  List<EmployeeListModelStruct> _employeeList = [];
  List<EmployeeListModelStruct> get employeeList => _employeeList;
  set employeeList(List<EmployeeListModelStruct> value) {
    _employeeList = value;
  }

  void addToEmployeeList(EmployeeListModelStruct value) {
    employeeList.add(value);
  }

  void removeFromEmployeeList(EmployeeListModelStruct value) {
    employeeList.remove(value);
  }

  void removeAtIndexFromEmployeeList(int index) {
    employeeList.removeAt(index);
  }

  void updateEmployeeListAtIndex(
    int index,
    EmployeeListModelStruct Function(EmployeeListModelStruct) updateFn,
  ) {
    employeeList[index] = updateFn(_employeeList[index]);
  }

  void insertAtIndexInEmployeeList(int index, EmployeeListModelStruct value) {
    employeeList.insert(index, value);
  }

  List<DataTableModelStruct> _tableDataTodoList = [];
  List<DataTableModelStruct> get tableDataTodoList => _tableDataTodoList;
  set tableDataTodoList(List<DataTableModelStruct> value) {
    _tableDataTodoList = value;
  }

  void addToTableDataTodoList(DataTableModelStruct value) {
    tableDataTodoList.add(value);
  }

  void removeFromTableDataTodoList(DataTableModelStruct value) {
    tableDataTodoList.remove(value);
  }

  void removeAtIndexFromTableDataTodoList(int index) {
    tableDataTodoList.removeAt(index);
  }

  void updateTableDataTodoListAtIndex(
    int index,
    DataTableModelStruct Function(DataTableModelStruct) updateFn,
  ) {
    tableDataTodoList[index] = updateFn(_tableDataTodoList[index]);
  }

  void insertAtIndexInTableDataTodoList(int index, DataTableModelStruct value) {
    tableDataTodoList.insert(index, value);
  }

  dynamic _upiHostResponse = jsonDecode(
      '{\"metaData\":[{\"name\":\"ID\",\"type\":\"String\"},{\"name\":\"CONNECT_TIMEOUT\",\"type\":\"String\"},{\"name\":\"ENABLE_PROXY\",\"type\":\"String\"},{\"name\":\"HOST\",\"type\":\"String\"},{\"name\":\"KEYSTORE_PASSWORD\",\"type\":\"String\"},{\"name\":\"KEYSTORE_PATH\",\"type\":\"String\"},{\"name\":\"MAX_CONNECTIONS\",\"type\":\"String\"},{\"name\":\"MAX_PER_ROUTE\",\"type\":\"String\"},{\"name\":\"METHOD\",\"type\":\"String\"},{\"name\":\"PROTOCOL\",\"type\":\"String\"},{\"name\":\"PROXY_ADDRESS\",\"type\":\"String\"},{\"name\":\"PROXY_PORT\",\"type\":\"String\"},{\"name\":\"READ_TIMEOUT\",\"type\":\"String\"},{\"name\":\"TLS_VERSION\",\"type\":\"String\"},{\"name\":\"TRUSTSTORE_PASSWORD\",\"type\":\"String\"},{\"name\":\"TRUSTSTORE_PATH\",\"type\":\"String\"},{\"name\":\"URL\",\"type\":\"String\"}],\"data\":[{\"ID\":368,\"CONNECT_TIMEOUT\":8000,\"ENABLE_PROXY\":\"N\",\"HOST\":\"AADHARENQUIRY\",\"KEYSTORE_PASSWORD\":\"pass123\$\",\"KEYSTORE_PATH\":\"/upi/UPI_LITE/cert_2018/upiapigateclientstore\",\"MAX_CONNECTIONS\":500,\"MAX_PER_ROUTE\":500,\"METHOD\":\"post\",\"PROTOCOL\":\"https\",\"PROXY_ADDRESS\":null,\"PROXY_PORT\":null,\"READ_TIMEOUT\":20000,\"TLS_VERSION\":\"TLSv1.2\",\"TRUSTSTORE_PASSWORD\":\"pass123\$\",\"TRUSTSTORE_PATH\":\"/upi/UPI_LITE/cert_2018/upiapigateclientstore\",\"URL\":\"apigeeuat.icicibankltd.com:8443/aadharvault?service=GetValue\"},{\"ID\":367,\"CONNECT_TIMEOUT\":8000,\"ENABLE_PROXY\":\"N\",\"HOST\":\"AADHARREFKEYENQUIRY\",\"KEYSTORE_PASSWORD\":\"changeit\",\"KEYSTORE_PATH\":\"/upi/UPI_LITE/cert_2018/mwuat.jks\",\"MAX_CONNECTIONS\":500,\"MAX_PER_ROUTE\":500,\"METHOD\":\"post\",\"PROTOCOL\":\"https\",\"PROXY_ADDRESS\":null,\"PROXY_PORT\":null,\"READ_TIMEOUT\":20000,\"TLS_VERSION\":\"TLSv1.2\",\"TRUSTSTORE_PASSWORD\":\"changeit\",\"TRUSTSTORE_PATH\":\"/upi/UPI_LITE/cert_2018/mwuat.jks\",\"URL\":\"mwuat.icicibankltd.com/v1/api/FI-INT\"},{\"ID\":35,\"CONNECT_TIMEOUT\":8000,\"ENABLE_PROXY\":\"N\",\"HOST\":\"ACCOUNTENQUIRY\",\"KEYSTORE_PASSWORD\":\"changeit\",\"KEYSTORE_PATH\":\"/upi/UPI_LITE/cert_2018/mwuat.jks\",\"MAX_CONNECTIONS\":500,\"MAX_PER_ROUTE\":500,\"METHOD\":\"post\",\"PROTOCOL\":\"https\",\"PROXY_ADDRESS\":null,\"PROXY_PORT\":null,\"READ_TIMEOUT\":20000,\"TLS_VERSION\":\"TLSv1.2\",\"TRUSTSTORE_PASSWORD\":\"changeit\",\"TRUSTSTORE_PATH\":\"/upi/UPI_LITE/cert_2018/mwuat.jks\",\"URL\":\"mwuat.icicibankltd.com/v1/api/FI-INT\"},{\"ID\":1010,\"CONNECT_TIMEOUT\":2000,\"ENABLE_PROXY\":\"N\",\"HOST\":\"API-GATEWAY-REQUEST\",\"KEYSTORE_PASSWORD\":\"changeit\",\"KEYSTORE_PATH\":\"/upi/UPI_LITE/cert_2018/mwuat.jks\",\"MAX_CONNECTIONS\":500,\"MAX_PER_ROUTE\":500,\"METHOD\":\"post\",\"PROTOCOL\":\"https\",\"PROXY_ADDRESS\":null,\"PROXY_PORT\":null,\"READ_TIMEOUT\":4000,\"TLS_VERSION\":\"TLSv1.2\",\"TRUSTSTORE_PASSWORD\":\"changeit\",\"TRUSTSTORE_PATH\":\"/upi/UPI_LITE/cert_2018/mwuat.jks\",\"URL\":\"mwuat.icicibankltd.com/v1/api/UPI-PUSH\"},{\"ID\":172,\"CONNECT_TIMEOUT\":8000,\"ENABLE_PROXY\":\"N\",\"HOST\":\"API-GATEWAY-REQUEST\",\"KEYSTORE_PASSWORD\":null,\"KEYSTORE_PATH\":null,\"MAX_CONNECTIONS\":50,\"MAX_PER_ROUTE\":50,\"METHOD\":\"post\",\"PROTOCOL\":\"http\",\"PROXY_ADDRESS\":null,\"PROXY_PORT\":3128,\"READ_TIMEOUT\":20000,\"TLS_VERSION\":null,\"TRUSTSTORE_PASSWORD\":null,\"TRUSTSTORE_PATH\":null,\"URL\":\"172.16.63.124:8080/api/UPI/v1/Callback\"},{\"ID\":441,\"CONNECT_TIMEOUT\":8000,\"ENABLE_PROXY\":\"N\",\"HOST\":\"CAR_CC_DETAILS_REQUEST\",\"KEYSTORE_PASSWORD\":\"changeit\",\"KEYSTORE_PATH\":\"/upi/UPI_LITE/cert_2018/mwuat.jks\",\"MAX_CONNECTIONS\":50,\"MAX_PER_ROUTE\":50,\"METHOD\":\"post\",\"PROTOCOL\":\"https\",\"PROXY_ADDRESS\":null,\"PROXY_PORT\":3128,\"READ_TIMEOUT\":20000,\"TLS_VERSION\":\"TLSv1.2\",\"TRUSTSTORE_PASSWORD\":\"changeit\",\"TRUSTSTORE_PATH\":\"/upi/UPI_LITE/cert_2018/mwuat.jks\",\"URL\":\"mwuat.icicibankltd.com/v1/api/CAR\"},{\"ID\":1007,\"CONNECT_TIMEOUT\":8000,\"ENABLE_PROXY\":\"N\",\"HOST\":\"CAR_SEND_REQUEST\",\"KEYSTORE_PASSWORD\":\"changeit\",\"KEYSTORE_PATH\":\"/upi/UPI_LITE/cert_2018/mwuat.jks\",\"MAX_CONNECTIONS\":50,\"MAX_PER_ROUTE\":50,\"METHOD\":\"post\",\"PROTOCOL\":\"https\",\"PROXY_ADDRESS\":null,\"PROXY_PORT\":null,\"READ_TIMEOUT\":20000,\"TLS_VERSION\":\"TLSv1.2\",\"TRUSTSTORE_PASSWORD\":\"changeit\",\"TRUSTSTORE_PATH\":\"/upi/UPI_LITE/cert_2018/mwuat.jks\",\"URL\":\"mwuat.icicibankltd.com/v1/api/CAR\"},{\"ID\":385,\"CONNECT_TIMEOUT\":2000,\"ENABLE_PROXY\":\"N\",\"HOST\":\"CBDC-SUBSCRIBER-VALIDATION\",\"KEYSTORE_PASSWORD\":null,\"KEYSTORE_PATH\":null,\"MAX_CONNECTIONS\":500,\"MAX_PER_ROUTE\":500,\"METHOD\":\"post\",\"PROTOCOL\":\"http\",\"PROXY_ADDRESS\":null,\"PROXY_PORT\":null,\"READ_TIMEOUT\":4000,\"TLS_VERSION\":\"TLSv1.2\",\"TRUSTSTORE_PASSWORD\":null,\"TRUSTSTORE_PATH\":null,\"URL\":\"10.75.49.12:5254/icici/upi/refund-validate-address\"},{\"ID\":162,\"CONNECT_TIMEOUT\":5000,\"ENABLE_PROXY\":\"N\",\"HOST\":\"CIB_SEND_REQUEST\",\"KEYSTORE_PASSWORD\":null,\"KEYSTORE_PATH\":null,\"MAX_CONNECTIONS\":500,\"MAX_PER_ROUTE\":500,\"METHOD\":\"get\",\"PROTOCOL\":\"http\",\"PROXY_ADDRESS\":null,\"PROXY_PORT\":null,\"READ_TIMEOUT\":5000,\"TLS_VERSION\":\"TLSv1.2\",\"TRUSTSTORE_PASSWORD\":null,\"TRUSTSTORE_PATH\":null,\"URL\":\"10.78.9.236:91180/corp/BANKAWAYMOBILE\"},{\"ID\":370,\"CONNECT_TIMEOUT\":2000,\"ENABLE_PROXY\":\"N\",\"HOST\":\"COMPLAINT-ADITYABIRLA\",\"KEYSTORE_PASSWORD\":\"pass123\$\",\"KEYSTORE_PATH\":\"/upi/UPI_LITE/cert_2018/upiapigateclientstore\",\"MAX_CONNECTIONS\":500,\"MAX_PER_ROUTE\":500,\"METHOD\":\"post\",\"PROTOCOL\":\"https\",\"PROXY_ADDRESS\":null,\"PROXY_PORT\":null,\"READ_TIMEOUT\":4000,\"TLS_VERSION\":\"TLSv1.2\",\"TRUSTSTORE_PASSWORD\":\"pass123\$\",\"TRUSTSTORE_PATH\":\"/upi/UPI_LITE/cert_2018/upiapigateclientstore\",\"URL\":\"apigeeuat.icicibankltd.com:8443/api/v1/callback/generic\"}]}');
  dynamic get upiHostResponse => _upiHostResponse;
  set upiHostResponse(dynamic value) {
    _upiHostResponse = value;
  }

  dynamic _upiData = jsonDecode(
      '[{\"ID\":368,\"CONNECT_TIMEOUT\":8000,\"ENABLE_PROXY\":\"N\",\"HOST\":\"AADHARENQUIRY\",\"KEYSTORE_PASSWORD\":\"pass123\$\",\"KEYSTORE_PATH\":\"/upi/UPI_LITE/cert_2018/upiapigateclientstore\",\"MAX_CONNECTIONS\":500,\"MAX_PER_ROUTE\":500,\"METHOD\":\"post\",\"PROTOCOL\":\"https\",\"PROXY_ADDRESS\":null,\"PROXY_PORT\":null,\"READ_TIMEOUT\":20000,\"TLS_VERSION\":\"TLSv1.2\",\"TRUSTSTORE_PASSWORD\":\"pass123\$\",\"TRUSTSTORE_PATH\":\"/upi/UPI_LITE/cert_2018/upiapigateclientstore\",\"URL\":\"apigeeuat.icicibankltd.com:8443/aadharvault?service=GetValue\"},{\"ID\":367,\"CONNECT_TIMEOUT\":8000,\"ENABLE_PROXY\":\"N\",\"HOST\":\"AADHARREFKEYENQUIRY\",\"KEYSTORE_PASSWORD\":\"changeit\",\"KEYSTORE_PATH\":\"/upi/UPI_LITE/cert_2018/mwuat.jks\",\"MAX_CONNECTIONS\":500,\"MAX_PER_ROUTE\":500,\"METHOD\":\"post\",\"PROTOCOL\":\"https\",\"PROXY_ADDRESS\":null,\"PROXY_PORT\":null,\"READ_TIMEOUT\":20000,\"TLS_VERSION\":\"TLSv1.2\",\"TRUSTSTORE_PASSWORD\":\"changeit\",\"TRUSTSTORE_PATH\":\"/upi/UPI_LITE/cert_2018/mwuat.jks\",\"URL\":\"mwuat.icicibankltd.com/v1/api/FI-INT\"},{\"ID\":35,\"CONNECT_TIMEOUT\":8000,\"ENABLE_PROXY\":\"N\",\"HOST\":\"ACCOUNTENQUIRY\",\"KEYSTORE_PASSWORD\":\"changeit\",\"KEYSTORE_PATH\":\"/upi/UPI_LITE/cert_2018/mwuat.jks\",\"MAX_CONNECTIONS\":500,\"MAX_PER_ROUTE\":500,\"METHOD\":\"post\",\"PROTOCOL\":\"https\",\"PROXY_ADDRESS\":null,\"PROXY_PORT\":null,\"READ_TIMEOUT\":20000,\"TLS_VERSION\":\"TLSv1.2\",\"TRUSTSTORE_PASSWORD\":\"changeit\",\"TRUSTSTORE_PATH\":\"/upi/UPI_LITE/cert_2018/mwuat.jks\",\"URL\":\"mwuat.icicibankltd.com/v1/api/FI-INT\"},{\"ID\":1010,\"CONNECT_TIMEOUT\":2000,\"ENABLE_PROXY\":\"N\",\"HOST\":\"API-GATEWAY-REQUEST\",\"KEYSTORE_PASSWORD\":\"changeit\",\"KEYSTORE_PATH\":\"/upi/UPI_LITE/cert_2018/mwuat.jks\",\"MAX_CONNECTIONS\":500,\"MAX_PER_ROUTE\":500,\"METHOD\":\"post\",\"PROTOCOL\":\"https\",\"PROXY_ADDRESS\":null,\"PROXY_PORT\":null,\"READ_TIMEOUT\":4000,\"TLS_VERSION\":\"TLSv1.2\",\"TRUSTSTORE_PASSWORD\":\"changeit\",\"TRUSTSTORE_PATH\":\"/upi/UPI_LITE/cert_2018/mwuat.jks\",\"URL\":\"mwuat.icicibankltd.com/v1/api/UPI-PUSH\"},{\"ID\":172,\"CONNECT_TIMEOUT\":8000,\"ENABLE_PROXY\":\"N\",\"HOST\":\"API-GATEWAY-REQUEST\",\"KEYSTORE_PASSWORD\":null,\"KEYSTORE_PATH\":null,\"MAX_CONNECTIONS\":50,\"MAX_PER_ROUTE\":50,\"METHOD\":\"post\",\"PROTOCOL\":\"http\",\"PROXY_ADDRESS\":null,\"PROXY_PORT\":3128,\"READ_TIMEOUT\":20000,\"TLS_VERSION\":null,\"TRUSTSTORE_PASSWORD\":null,\"TRUSTSTORE_PATH\":null,\"URL\":\"172.16.63.124:8080/api/UPI/v1/Callback\"},{\"ID\":441,\"CONNECT_TIMEOUT\":8000,\"ENABLE_PROXY\":\"N\",\"HOST\":\"CAR_CC_DETAILS_REQUEST\",\"KEYSTORE_PASSWORD\":\"changeit\",\"KEYSTORE_PATH\":\"/upi/UPI_LITE/cert_2018/mwuat.jks\",\"MAX_CONNECTIONS\":50,\"MAX_PER_ROUTE\":50,\"METHOD\":\"post\",\"PROTOCOL\":\"https\",\"PROXY_ADDRESS\":null,\"PROXY_PORT\":3128,\"READ_TIMEOUT\":20000,\"TLS_VERSION\":\"TLSv1.2\",\"TRUSTSTORE_PASSWORD\":\"changeit\",\"TRUSTSTORE_PATH\":\"/upi/UPI_LITE/cert_2018/mwuat.jks\",\"URL\":\"mwuat.icicibankltd.com/v1/api/CAR\"},{\"ID\":1007,\"CONNECT_TIMEOUT\":8000,\"ENABLE_PROXY\":\"N\",\"HOST\":\"CAR_SEND_REQUEST\",\"KEYSTORE_PASSWORD\":\"changeit\",\"KEYSTORE_PATH\":\"/upi/UPI_LITE/cert_2018/mwuat.jks\",\"MAX_CONNECTIONS\":50,\"MAX_PER_ROUTE\":50,\"METHOD\":\"post\",\"PROTOCOL\":\"https\",\"PROXY_ADDRESS\":null,\"PROXY_PORT\":null,\"READ_TIMEOUT\":20000,\"TLS_VERSION\":\"TLSv1.2\",\"TRUSTSTORE_PASSWORD\":\"changeit\",\"TRUSTSTORE_PATH\":\"/upi/UPI_LITE/cert_2018/mwuat.jks\",\"URL\":\"mwuat.icicibankltd.com/v1/api/CAR\"}]');
  dynamic get upiData => _upiData;
  set upiData(dynamic value) {
    _upiData = value;
  }

  dynamic _tableJsonResponseData;
  dynamic get tableJsonResponseData => _tableJsonResponseData;
  set tableJsonResponseData(dynamic value) {
    _tableJsonResponseData = value;
  }

  String _editedFields = '';
  String get editedFields => _editedFields;
  set editedFields(String value) {
    _editedFields = value;
  }

  String _searchVal = '';
  String get searchVal => _searchVal;
  set searchVal(String value) {
    _searchVal = value;
  }

  dynamic _djson = jsonDecode(
      '{\"ID\":368,\"CONNECT_TIMEOUT\":8000,\"ENABLE_PROXY\":\"N\",\"HOST\":\"AADHARENQUIRY\",\"KEYSTORE_PASSWORD\":\"pass123\$\",\"KEYSTORE_PATH\":\"/upi/UPI_LITE/cert_2018/upiapigateclientstore\",\"MAX_CONNECTIONS\":500,\"MAX_PER_ROUTE\":500,\"METHOD\":\"post\",\"PROTOCOL\":\"https\",\"PROXY_ADDRESS\":null,\"PROXY_PORT\":null,\"READ_TIMEOUT\":20000,\"TLS_VERSION\":\"TLSv1.2\",\"TRUSTSTORE_PASSWORD\":\"pass123\$\",\"TRUSTSTORE_PATH\":\"/upi/UPI_LITE/cert_2018/upiapigateclientstore\",\"URL\":\"apigeeuat.icicibankltd.com:8443/aadharvault?service=GetValue\"}');
  dynamic get djson => _djson;
  set djson(dynamic value) {
    _djson = value;
  }

  String _userid = '';
  String get userid => _userid;
  set userid(String value) {
    _userid = value;
    prefs.setString('ff_userid', value);
  }

  dynamic _editJson = jsonDecode(
      '{\"ID\":368,\"CONNECT_TIMEOUT\":8000,\"ENABLE_PROXY\":\"N\",\"HOST\":\"AADHARENQUIRY\",\"KEYSTORE_PASSWORD\":\"pass123\$\",\"KEYSTORE_PATH\":\"/upi/UPI_LITE/cert_2018/upiapigateclientstore\",\"MAX_CONNECTIONS\":500,\"MAX_PER_ROUTE\":5000,\"METHOD\":\"post\",\"PROTOCOL\":\"https\",\"PROXY_ADDRESS\":null,\"PROXY_PORT\":null,\"READ_TIMEOUT\":10000,\"TLS_VERSION\":\"TLSv1.2\",\"TRUSTSTORE_PASSWORD\":\"pass123\$\$\",\"TRUSTSTORE_PATH\":\"/upi/UPI_LITE/cert_2018/upiapigateclientstore\",\"URL\":\"apigeeuat.icicibankltd.com:8443/aadharvault?service=GetValue\"}');
  dynamic get editJson => _editJson;
  set editJson(dynamic value) {
    _editJson = value;
  }

  bool _sidebar = true;
  bool get sidebar => _sidebar;
  set sidebar(bool value) {
    _sidebar = value;
  }

  bool _PendingRequests = false;
  bool get PendingRequests => _PendingRequests;
  set PendingRequests(bool value) {
    _PendingRequests = value;
  }

  bool _UpiHost = false;
  bool get UpiHost => _UpiHost;
  set UpiHost(bool value) {
    _UpiHost = value;
  }

  bool _UpiSms = false;
  bool get UpiSms => _UpiSms;
  set UpiSms(bool value) {
    _UpiSms = value;
  }

  bool _SYS = false;
  bool get SYS => _SYS;
  set SYS(bool value) {
    _SYS = value;
  }

  bool _UpiComplaint = false;
  bool get UpiComplaint => _UpiComplaint;
  set UpiComplaint(bool value) {
    _UpiComplaint = value;
  }

  bool _UpiCountry = false;
  bool get UpiCountry => _UpiCountry;
  set UpiCountry(bool value) {
    _UpiCountry = value;
  }

  bool _UpiSource = false;
  bool get UpiSource => _UpiSource;
  set UpiSource(bool value) {
    _UpiSource = value;
  }

  bool _UpiFrm = false;
  bool get UpiFrm => _UpiFrm;
  set UpiFrm(bool value) {
    _UpiFrm = value;
  }

  bool _UpiTransaction = false;
  bool get UpiTransaction => _UpiTransaction;
  set UpiTransaction(bool value) {
    _UpiTransaction = value;
  }

  dynamic _apiConfigJson;
  dynamic get apiConfigJson => _apiConfigJson;
  set apiConfigJson(dynamic value) {
    _apiConfigJson = value;
  }

  bool _pendingReq = true;
  bool get pendingReq => _pendingReq;
  set pendingReq(bool value) {
    _pendingReq = value;
  }

  bool _UpiHostBool = false;
  bool get UpiHostBool => _UpiHostBool;
  set UpiHostBool(bool value) {
    _UpiHostBool = value;
  }

  bool _pendingRequestViewOption = false;
  bool get pendingRequestViewOption => _pendingRequestViewOption;
  set pendingRequestViewOption(bool value) {
    _pendingRequestViewOption = value;
  }

  String _selectedSidebar = '1';
  String get selectedSidebar => _selectedSidebar;
  set selectedSidebar(String value) {
    _selectedSidebar = value;
  }

  String _token = '';
  String get token => _token;
  set token(String value) {
    _token = value;
    prefs.setString('ff_token', value);
  }

  String _deviceHash = '';
  String get deviceHash => _deviceHash;
  set deviceHash(String value) {
    _deviceHash = value;
    prefs.setString('ff_deviceHash', value);
  }

  dynamic _operation;
  dynamic get operation => _operation;
  set operation(dynamic value) {
    _operation = value;
  }

  bool _addDeleteBool = false;
  bool get addDeleteBool => _addDeleteBool;
  set addDeleteBool(bool value) {
    _addDeleteBool = value;
  }

  dynamic _sysResponse = jsonDecode(
      '{\"metaData\":[{\"name\":\"ID\",\"type\":\"String\"},{\"name\":\"DATA_TYPE\",\"type\":\"String\"},{\"name\":\"NAME\",\"type\":\"String\"},{\"name\":\"READPERM\",\"type\":\"String\"},{\"name\":\"VALUE\",\"type\":\"String\"},{\"name\":\"WRITEPERM\",\"type\":\"String\"}],\"data\":[{\"ID\":\"perm.login\",\"DATA_TYPE\":\"String\",\"NAME\":null,\"READPERM\":null,\"VALUE\":\"Login\",\"WRITEPERM\":null},{\"ID\":\"perm.admin\",\"DATA_TYPE\":\"String\",\"NAME\":null,\"READPERM\":null,\"VALUE\":\"Administrator\",\"WRITEPERM\":null},{\"ID\":\"conf.thales.hsm1\",\"DATA_TYPE\":\"String\",\"NAME\":null,\"READPERM\":null,\"VALUE\":\"10.50.46.92:4503\",\"WRITEPERM\":null},{\"ID\":\"conf.thales.hsm2\",\"DATA_TYPE\":\"String\",\"NAME\":null,\"READPERM\":null,\"VALUE\":\"10.50.46.92:4503\",\"WRITEPERM\":null},{\"ID\":\"login.max-attempts\",\"DATA_TYPE\":\"String\",\"NAME\":null,\"READPERM\":null,\"VALUE\":\"5\",\"WRITEPERM\":null},{\"ID\":\"account.lockout.duration\",\"DATA_TYPE\":\"String\",\"NAME\":null,\"READPERM\":null,\"VALUE\":\"15\",\"WRITEPERM\":null},{\"ID\":\"ldap.user.attribute.cn\",\"DATA_TYPE\":\"String\",\"NAME\":null,\"READPERM\":null,\"VALUE\":\"CN\",\"WRITEPERM\":null},{\"ID\":\"ldap.user.attribute.id\",\"DATA_TYPE\":\"String\",\"NAME\":null,\"READPERM\":null,\"VALUE\":\"Samaccountname\",\"WRITEPERM\":null},{\"ID\":\"ldap.user.attribute.mail\",\"DATA_TYPE\":\"String\",\"NAME\":null,\"READPERM\":null,\"VALUE\":\"mail\",\"WRITEPERM\":null},{\"ID\":\"ldap.authentication.token.suffix\",\"DATA_TYPE\":\"String\",\"NAME\":null,\"READPERM\":null,\"VALUE\":\"@icicibankltd.com\",\"WRITEPERM\":null}]}');
  dynamic get sysResponse => _sysResponse;
  set sysResponse(dynamic value) {
    _sysResponse = value;
  }

  dynamic _addjsonconfig;
  dynamic get addjsonconfig => _addjsonconfig;
  set addjsonconfig(dynamic value) {
    _addjsonconfig = value;
  }

  String _dropdownSelectedValue = 'UPI Host';
  String get dropdownSelectedValue => _dropdownSelectedValue;
  set dropdownSelectedValue(String value) {
    _dropdownSelectedValue = value;
  }

  List<AccessByTableStruct> _userDataAccess = [
    AccessByTableStruct.fromSerializableMap(jsonDecode(
        '{\"tableId\":\"1\",\"actionIds\":\"[\\\"1\\\",\\\"2\\\",\\\"3\\\",\\\"4\\\"]\"}')),
    AccessByTableStruct.fromSerializableMap(jsonDecode(
        '{\"tableId\":\"2\",\"actionIds\":\"[\\\"1\\\",\\\"4\\\"]\"}')),
    AccessByTableStruct.fromSerializableMap(jsonDecode(
        '{\"tableId\":\"3\",\"actionIds\":\"[\\\"2\\\",\\\"3\\\",\\\"4\\\"]\"}')),
    AccessByTableStruct.fromSerializableMap(
        jsonDecode('{\"tableId\":\"4\",\"actionIds\":\"[\\\"4\\\"]\"}')),
    AccessByTableStruct.fromSerializableMap(
        jsonDecode('{\"tableId\":\"5\",\"actionIds\":\"[\\\"4\\\"]\"}')),
    AccessByTableStruct.fromSerializableMap(
        jsonDecode('{\"tableId\":\"6\",\"actionIds\":\"[\\\"4\\\"]\"}')),
    AccessByTableStruct.fromSerializableMap(
        jsonDecode('{\"tableId\":\"7\",\"actionIds\":\"[\\\"4\\\"]\"}'))
  ];
  List<AccessByTableStruct> get userDataAccess => _userDataAccess;
  set userDataAccess(List<AccessByTableStruct> value) {
    _userDataAccess = value;
  }

  void addToUserDataAccess(AccessByTableStruct value) {
    userDataAccess.add(value);
  }

  void removeFromUserDataAccess(AccessByTableStruct value) {
    userDataAccess.remove(value);
  }

  void removeAtIndexFromUserDataAccess(int index) {
    userDataAccess.removeAt(index);
  }

  void updateUserDataAccessAtIndex(
    int index,
    AccessByTableStruct Function(AccessByTableStruct) updateFn,
  ) {
    userDataAccess[index] = updateFn(_userDataAccess[index]);
  }

  void insertAtIndexInUserDataAccess(int index, AccessByTableStruct value) {
    userDataAccess.insert(index, value);
  }

  dynamic _datatest = jsonDecode(
      '{\"token\":\"token\",\"accessSummary\":{\"userId\":\"john.doe\",\"roleId\":\"1\",\"accessByTable\":[{\"tableId\":\"1\",\"actionIds\":[\"1\"]},{\"tableId\":\"2\",\"actionIds\":[\"1\",\"3\"]},{\"tableId\":\"3\",\"actionIds\":[\"2\",\"3\"]}]}}');
  dynamic get datatest => _datatest;
  set datatest(dynamic value) {
    _datatest = value;
  }

  dynamic _loginjsontest = jsonDecode(
      '{\"token\":null,\"message\":\"Token validation failed\",\"statusCode\":1000}');
  dynamic get loginjsontest => _loginjsontest;
  set loginjsontest(dynamic value) {
    _loginjsontest = value;
  }

  dynamic _headerJsonForView;
  dynamic get headerJsonForView => _headerJsonForView;
  set headerJsonForView(dynamic value) {
    _headerJsonForView = value;
  }

  bool _isUserInfo = false;
  bool get isUserInfo => _isUserInfo;
  set isUserInfo(bool value) {
    _isUserInfo = value;
  }

  dynamic _countJSon = jsonDecode('null');
  dynamic get countJSon => _countJSon;
  set countJSon(dynamic value) {
    _countJSon = value;
  }

  int _totalpendingcount = 0;
  int get totalpendingcount => _totalpendingcount;
  set totalpendingcount(int value) {
    _totalpendingcount = value;
  }

  dynamic _countdefaultjson = jsonDecode(
      '[{\"TABLE_ID\":\"SYS\",\"NAME_COUNT\":0},{\"TABLE_ID\":\"UPIBANK\",\"NAME_COUNT\":0},{\"TABLE_ID\":\"UPICOMPLAINT\",\"NAME_COUNT\":0},{\"TABLE_ID\":\"UPICOUNTRY\",\"NAME_COUNT\":0},{\"TABLE_ID\":\"UPIFRM\",\"NAME_COUNT\":0},{\"TABLE_ID\":\"UPIHOST\",\"NAME_COUNT\":0},{\"TABLE_ID\":\"UPIINTEROPERABLE\",\"NAME_COUNT\":0},{\"TABLE_ID\":\"UPISMS\",\"NAME_COUNT\":0},{\"TABLE_ID\":\"UPISOURCESUB\",\"NAME_COUNT\":0}]');
  dynamic get countdefaultjson => _countdefaultjson;
  set countdefaultjson(dynamic value) {
    _countdefaultjson = value;
  }

  String _lastLogin = '0000-00-00 00:00:00';
  String get lastLogin => _lastLogin;
  set lastLogin(String value) {
    _lastLogin = value;
    prefs.setString('ff_lastLogin', value);
  }

  bool _isInitialSearch = false;
  bool get isInitialSearch => _isInitialSearch;
  set isInitialSearch(bool value) {
    _isInitialSearch = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
