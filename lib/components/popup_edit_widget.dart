import '/components/editable_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'popup_edit_model.dart';
export 'popup_edit_model.dart';

class PopupEditWidget extends StatefulWidget {
  const PopupEditWidget({
    super.key,
    this.json,
  });

  final dynamic json;

  @override
  State<PopupEditWidget> createState() => _PopupEditWidgetState();
}

class _PopupEditWidgetState extends State<PopupEditWidget> {
  late PopupEditModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PopupEditModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final editData = getJsonField(
          widget.json,
          r'''$''',
        ).toList();

        return Column(
          mainAxisSize: MainAxisSize.max,
          children: List.generate(editData.length, (editDataIndex) {
            final editDataItem = editData[editDataIndex];
            return EditableFieldWidget(
              key: Key('Keyau0_${editDataIndex}_of_${editData.length}'),
              data: '',
              onChange: (data) async {},
              passDataItem: (fieldName) async {},
            );
          }),
        );
      },
    );
  }
}
