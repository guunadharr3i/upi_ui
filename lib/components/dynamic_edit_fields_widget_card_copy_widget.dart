import '/backend/schema/structs/index.dart';
import '/components/editable_field_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'dynamic_edit_fields_widget_card_copy_model.dart';
export 'dynamic_edit_fields_widget_card_copy_model.dart';

class DynamicEditFieldsWidgetCardCopyWidget extends StatefulWidget {
  const DynamicEditFieldsWidgetCardCopyWidget({
    super.key,
    this.dataTableNewModal,
    this.closeIconCallBack,
    this.searchIconCallBack,
  });

  final DataTableNewModelStruct? dataTableNewModal;
  final Future Function()? closeIconCallBack;
  final Future Function()? searchIconCallBack;

  @override
  State<DynamicEditFieldsWidgetCardCopyWidget> createState() =>
      _DynamicEditFieldsWidgetCardCopyWidgetState();
}

class _DynamicEditFieldsWidgetCardCopyWidgetState
    extends State<DynamicEditFieldsWidgetCardCopyWidget> {
  late DynamicEditFieldsWidgetCardCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DynamicEditFieldsWidgetCardCopyModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.isSuccess = false;
      safeSetState(() {});
      await Future.delayed(
        Duration(
          milliseconds: 10,
        ),
      );
      _model.editedData = widget.dataTableNewModal;
      _model.updatePage(() {});
      _model.isSuccess = true;
      _model.updatePage(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0xFFD0C6C6),
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
          child: Container(
            width: MediaQuery.sizeOf(context).width * 0.7,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 4.0,
                  color: Color(0x33000000),
                  offset: Offset(
                    0.0,
                    2.0,
                  ),
                )
              ],
              borderRadius: BorderRadius.circular(10.0),
              shape: BoxShape.rectangle,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 10.0, 0.0),
                            child: Icon(
                              Icons.edit_note_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 30.0,
                            ),
                          ),
                          Text(
                            'Edit the fields',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Mulish',
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.delete_sweep,
                            color: Color(0xFFF41F3F),
                            size: 30.0,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                _model.updatePage(() {});
                              },
                              text: 'Update',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFFE77817),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Mulish',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await widget.closeIconCallBack?.call();
                            },
                            child: Icon(
                              Icons.close,
                              color: FlutterFlowTheme.of(context).error,
                              size: 30.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1.0,
                  color: Color(0xFFD0C6C6),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: Container(
                    height: MediaQuery.sizeOf(context).height * 0.5,
                    decoration: BoxDecoration(),
                    child: Visibility(
                      visible: _model.isSuccess,
                      child: Builder(
                        builder: (context) {
                          final itemsList = _model
                                  .editedData?.value.firstOrNull?.modelList
                                  .toList() ??
                              [];

                          return GridView.builder(
                            padding: EdgeInsets.fromLTRB(
                              0,
                              10.0,
                              0,
                              0,
                            ),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 30.0,
                              childAspectRatio: 4.0,
                            ),
                            scrollDirection: Axis.vertical,
                            itemCount: itemsList.length,
                            itemBuilder: (context, itemsListIndex) {
                              final itemsListItem = itemsList[itemsListIndex];
                              return EditableFieldWidget(
                                key: Key(
                                    'Key7ao_${itemsListIndex}_of_${itemsList.length}'),
                                heading: _model.editedData?.headers
                                    .elementAtOrNull(itemsListIndex),
                                data: itemsListItem,
                                onChange: (data) async {},
                                passDataItem: (fieldName) async {},
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
