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

import 'package:number_pagination/number_pagination.dart';

class DataTableWidget extends StatefulWidget {
  const DataTableWidget({
    super.key,
    this.width,
    this.height,
    this.headers,
    this.rows,
    this.callBackSelectedRows,
  });

  final double? width;
  final double? height;
  final List<String>? headers;
  final List<DataTableModelStruct>? rows;
  final Future Function(List<DataTableModelStruct>? selectedRowsData)?
      callBackSelectedRows;

  @override
  State<DataTableWidget> createState() => _DataTableWidgetState();
}

class _DataTableWidgetState extends State<DataTableWidget> {
  int? editingRowIndex;
  List<TextEditingController> _controllers = [];

  late List<DataTableModelStruct> _rows;
  late List<bool> _selectedRows;
  List<DataTableModelStruct> selectedRowData = [];

  int? sortColumnIndex;
  bool isAscending = true;

  @override
  void initState() {
    super.initState();
    _rows = List.from(widget.rows ?? []);
    _selectedRows = List<bool>.filled(_rows.length, false);
  }

  void _startEditing(int index) {
    setState(() {
      editingRowIndex = index;
      final row = _rows[index];
      _controllers = row.modelList
          .map((cell) => TextEditingController(text: cell))
          .toList();
    });
  }

  void _saveEditing(int index) {
    setState(() {
      for (int i = 0; i < _controllers.length; i++) {
        _rows[index].modelList[i] = _controllers[i].text;
      }
      editingRowIndex = null;
      _controllers.clear();
    });
  }

  void _sortColumn(int columnIndex) {
    setState(() {
      if (sortColumnIndex == columnIndex) {
        isAscending = !isAscending;
      } else {
        sortColumnIndex = columnIndex;
        isAscending = true;
      }

      _rows.sort((a, b) {
        final aVal = a.modelList[columnIndex];
        final bVal = b.modelList[columnIndex];
        return isAscending ? aVal.compareTo(bVal) : bVal.compareTo(aVal);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final columnCount = widget.headers?.length ?? 0;
    return Column(
      children: [
        Container(
          height: 50,
          decoration: BoxDecoration(
            color: const Color(0xffF06321),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 40,
                child: Checkbox(
                  value:
                      _selectedRows.isNotEmpty && _selectedRows.every((e) => e),
                  onChanged: (value) {
                    setState(() {
                      selectedRowData.clear();
                      for (int i = 0; i < _selectedRows.length; i++) {
                        _selectedRows[i] = value ?? false;
                        if (value == true) {
                          selectedRowData.add(_rows[i]);
                        }
                      }
                    });
                    if (widget.callBackSelectedRows != null) {
                      widget.callBackSelectedRows!(selectedRowData);
                    }
                  },
                  checkColor: const Color(0xffF06321),
                  fillColor: MaterialStateProperty.all(Colors.white),
                ),
              ),
              for (int i = 0; i < columnCount; i++)
                Expanded(
                  child: InkWell(
                    onTap: () => _sortColumn(i),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          widget.headers![i],
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Icon(
                          sortColumnIndex == i
                              ? (isAscending
                                  ? Icons.arrow_downward
                                  : Icons.arrow_upward)
                              : Icons.unfold_more,
                          color: Colors.white,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),
              const SizedBox(width: 30), // For edit icon alignment
              const SizedBox(width: 30), // For delete icon alignment
              const SizedBox(width: 10), // Right padding
            ],
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            itemCount: _rows.length,
            itemBuilder: (context, index) {
              final row = _rows[index];
              final isEditing = editingRowIndex == index;

              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 40,
                        child: Checkbox(
                          value: _selectedRows[index],
                          onChanged: (value) {
                            setState(() {
                              _selectedRows[index] = value ?? false;
                              if (value == true &&
                                  !selectedRowData.contains(row)) {
                                selectedRowData.add(row);
                              } else {
                                selectedRowData.remove(row);
                              }
                            });
                            if (widget.callBackSelectedRows != null) {
                              widget.callBackSelectedRows!(selectedRowData);
                            }
                          },
                        ),
                      ),
                      for (int i = 0; i < row.modelList.length; i++)
                        Expanded(
                          child: isEditing
                              ? Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: TextFormField(
                                    controller: _controllers[i],
                                    decoration: const InputDecoration(
                                      isDense: true,
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 8),
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                )
                              : Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    row.modelList[i],
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                        ),
                      SizedBox(
                        width: 30,
                        child: IconButton(
                          icon: Icon(isEditing ? Icons.check : Icons.edit),
                          onPressed: () {
                            if (isEditing) {
                              _saveEditing(index);
                            } else {
                              _startEditing(index);
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: 30,
                        child: IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text("Delete Confirmation"),
                                  content: const Text(
                                      "Are you sure you want to delete this row?"),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text("Cancel"),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        setState(() {
                                          _rows.removeAt(index);
                                          Navigator.of(context).pop();
                                        });
                                      },
                                      child: const Text("Delete",
                                          style: TextStyle(color: Colors.red)),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                        ),
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 50,
          child: NumberPagination(
            onPageChanged: (int pageNumber) {
              setState(() {});
            },
            visiblePagesCount: 5,
            totalPages: 15,
            currentPage: 1,
            enableInteraction: true,
            firstPageIcon: const Icon(Icons.first_page, color: Colors.red),
            previousPageIcon:
                const Icon(Icons.keyboard_arrow_left, color: Colors.red),
            nextPageIcon:
                const Icon(Icons.keyboard_arrow_right, color: Colors.red),
            lastPageIcon: const Icon(Icons.last_page, color: Colors.red),
            controlButtonColor: Colors.white,
            selectedButtonColor: Colors.orange,
            unSelectedButtonColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
