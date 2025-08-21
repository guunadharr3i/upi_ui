import '/backend/schema/structs/index.dart';
import '/components/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/components/new_sidebar/new_sidebar_widget.dart';
import '/components/pending_request_widget.dart';
import '/components/upi_comp_widget.dart';
import '/components/user_info_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dashboard_screen_widget.dart' show DashboardScreenWidget;
import 'package:flutter/material.dart';

class DashboardScreenModel extends FlutterFlowModel<DashboardScreenWidget> {
  ///  Local state fields for this page.

  String selectedSideBarItem = 'pendingRequests';

  DataTableNewModelStruct? dataTableStacture;
  void updateDataTableStactureStruct(
      Function(DataTableNewModelStruct) updateFn) {
    updateFn(dataTableStacture ??= DataTableNewModelStruct());
  }

  bool isSuccess = false;

  bool isLoading = false;

  bool viewClick = false;

  List<DataStruct> datatablelist = [];
  void addToDatatablelist(DataStruct item) => datatablelist.add(item);
  void removeFromDatatablelist(DataStruct item) => datatablelist.remove(item);
  void removeAtIndexFromDatatablelist(int index) =>
      datatablelist.removeAt(index);
  void insertAtIndexInDatatablelist(int index, DataStruct item) =>
      datatablelist.insert(index, item);
  void updateDatatablelistAtIndex(int index, Function(DataStruct) updateFn) =>
      datatablelist[index] = updateFn(datatablelist[index]);

  ///  State fields for stateful widgets in this page.

  // Model for NewSidebar component.
  late NewSidebarModel newSidebarModel;
  // Model for header component.
  late HeaderModel headerModel;
  // Model for PendingRequest component.
  late PendingRequestModel pendingRequestModel;
  // Model for UpiComp component.
  late UpiCompModel upiCompModel;
  // Model for footer component.
  late FooterModel footerModel;
  // Model for UserInfoComp component.
  late UserInfoCompModel userInfoCompModel;

  @override
  void initState(BuildContext context) {
    newSidebarModel = createModel(context, () => NewSidebarModel());
    headerModel = createModel(context, () => HeaderModel());
    pendingRequestModel = createModel(context, () => PendingRequestModel());
    upiCompModel = createModel(context, () => UpiCompModel());
    footerModel = createModel(context, () => FooterModel());
    userInfoCompModel = createModel(context, () => UserInfoCompModel());
  }

  @override
  void dispose() {
    newSidebarModel.dispose();
    headerModel.dispose();
    pendingRequestModel.dispose();
    upiCompModel.dispose();
    footerModel.dispose();
    userInfoCompModel.dispose();
  }
}
