import '/backend/schema/structs/index.dart';
import '/components/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/components/new_sidebar/new_sidebar_widget.dart';
import '/components/pending_request_widget.dart';
import '/components/upi_comp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'dashboard_screen_widget.dart' show DashboardScreenWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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

  // Stores action output result for [Custom Action - generateWebDeviceHashWithTime] action in DashboardScreen widget.
  String? deviceHashInfo;
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

  @override
  void initState(BuildContext context) {
    newSidebarModel = createModel(context, () => NewSidebarModel());
    headerModel = createModel(context, () => HeaderModel());
    pendingRequestModel = createModel(context, () => PendingRequestModel());
    upiCompModel = createModel(context, () => UpiCompModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    newSidebarModel.dispose();
    headerModel.dispose();
    pendingRequestModel.dispose();
    upiCompModel.dispose();
    footerModel.dispose();
  }
}
