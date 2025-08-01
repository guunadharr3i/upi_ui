// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class DataTableWidgettt extends StatefulWidget {
  const DataTableWidgettt({
    super.key,
    this.width,
    this.height,
    this.headers,
    this.rows,
    required this.callBackSelectedRows,
  });

  final double? width;
  final double? height;
  final List<String>? headers;
  final List<DataTableModelStruct>? rows;
  final Future Function(dynamic editedFieldData) callBackSelectedRows;

  @override
  State<DataTableWidgettt> createState() => _DataTableWidgetttState();
}

class _DataTableWidgetttState extends State<DataTableWidgettt> {
  List<DataTableModelStruct> _rows = [];
  List<DataTableModelStruct> _filteredRows = [];
  TextEditingController _searchController = TextEditingController();
  bool isEditing = false;

  late List<TextEditingController> _fieldControllers;

  @override
  void initState() {
    super.initState();
    _rows = List.from(widget.rows ?? []);
    _filteredRows = List.from(_rows);
    _initializeControllers();
  }

  void _initializeControllers() {
    final firstRow = _filteredRows.isNotEmpty ? _filteredRows.first : null;
    if (firstRow != null) {
      _fieldControllers = firstRow.modelList
          .map((value) => TextEditingController(text: value))
          .toList();
    } else {
      _fieldControllers = [];
    }
  }

  void _toggleEdit() {
    setState(() {
      isEditing = !isEditing;
    });
  }

  void _saveChanges() {
    Map<String, dynamic>? updatedJson;
    final updated = _fieldControllers.map((c) => c.text).toList();

    setState(() {
      if (_filteredRows.isNotEmpty) {
        final updatedRow = DataTableModelStruct(modelList: updated);
        _filteredRows[0] = updatedRow;
        _rows[0] = updatedRow;
        updatedJson = {
          for (int i = 0; i < widget.headers!.length; i++)
            widget.headers![i]: _parseValue(_fieldControllers[i].text)
        };
        widget.callBackSelectedRows(updatedJson);
        isEditing = false;
      }
    });
  }

  dynamic _parseValue(String value) {
    if (value.trim().isEmpty) return null;
    final intVal = int.tryParse(value);
    return intVal ?? value;
  }

  @override
  Widget build(BuildContext context) {
    final headers = widget.headers ?? [];
    final firstRow = _filteredRows.isNotEmpty ? _filteredRows.first : null;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (firstRow != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      blurRadius: 12,
                      offset: const Offset(0, 6),
                    )
                  ],
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Record Details",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87),
                        ),
                        IconButton(
                          icon: Icon(
                            isEditing ? Icons.close : Icons.edit,
                            color: isEditing ? Colors.red : Colors.deepOrange,
                          ),
                          tooltip: isEditing ? "Cancel Edit" : "Edit",
                          onPressed: _toggleEdit,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Wrap(
                      spacing: 24,
                      runSpacing: 20,
                      children: List.generate(firstRow.modelList.length, (i) {
                        final header =
                            headers.length > i ? headers[i] : 'Field ${i + 1}';
                        final isIdField = header.toLowerCase().contains('id');
                        final isHostOrUrl =
                            header.toLowerCase().contains('host') ||
                                header.toLowerCase().contains('url');

                        // Only show HOST/URL if not editing
                        if (!isEditing && !isHostOrUrl) {
                          return const SizedBox.shrink();
                        }

                        return ConstrainedBox(
                          constraints: const BoxConstraints(
                              minWidth: 140, maxWidth: 300),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                header,
                                style: const TextStyle(
                                  fontSize: 13,
                                  color: Colors.deepOrange,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.3,
                                ),
                              ),
                              const SizedBox(height: 6),
                              isEditing && !isIdField
                                  ? TextFormField(
                                      controller: _fieldControllers[i],
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: const Color(0xFFF8F8F8),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                              color: Colors.grey.shade300),
                                        ),
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 12),
                                      ),
                                    )
                                  : Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 12, horizontal: 14),
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFF8F8F8),
                                        border: Border.all(
                                            color: Colors.grey.shade300),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        _fieldControllers[i].text,
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black87,
                                        ),
                                      ),
                                    ),
                            ],
                          ),
                        );
                      }),
                    ),
                    if (isEditing) ...[
                      const SizedBox(height: 50),
                      ElevatedButton.icon(
                        onPressed: _saveChanges,
                        icon: const Icon(Icons.save),
                        label: const Text("Save Changes"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ]
                  ],
                ),
              ),
            )
          else
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 40),
              child: Center(
                child: Text(
                  "No matching data found.",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
