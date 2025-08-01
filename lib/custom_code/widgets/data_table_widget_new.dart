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

class DataTableWidgetNew extends StatefulWidget {
  const DataTableWidgetNew({
    super.key,
    this.width,
    this.height,
    this.headers,
    this.rows,
    this.callBackSelectedRows,
    this.updateData,
  });

  final double? width;
  final double? height;
  final List<String>? headers;
  final List<DataTableModelStruct>? rows;
  final Future Function(List<DataTableModelStruct>? selectedRowsData)?
      callBackSelectedRows;
  final Future Function(dynamic editedData)? updateData;

  @override
  State<DataTableWidgetNew> createState() => _DataTableWidgetNewState();
}

class _DataTableWidgetNewState extends State<DataTableWidgetNew> {
  List<DataTableModelStruct> _rows = [];
  List<DataTableModelStruct> _filteredRows = [];
  List<bool> _selectedRows = [];
  List<DataTableModelStruct> selectedRowData = [];
  TextEditingController _searchController = TextEditingController();
  int? sortColumnIndex;
  bool isAscending = true;

  int currentPage = 1;
  int rowsPerPage = 8;

  final ScrollController _horizontalScrollController = ScrollController();
  final ScrollController _verticalScrollController = ScrollController();

  List<DataTableModelStruct> get paginatedRows {
    final start = (currentPage - 1) * rowsPerPage;
    final end = start + rowsPerPage;
    return _filteredRows.sublist(
        start, end > _filteredRows.length ? _filteredRows.length : end);
  }

  int get totalPages => (_filteredRows.length / rowsPerPage).ceil();

  @override
  void initState() {
    _rows = List.from(widget?.rows ?? []);
    _filteredRows = List.from(_rows);
    _selectedRows = List<bool>.filled(_filteredRows.length, false);
    super.initState();
  }

  void _sortColumn(int columnIndex) {
    setState(() {
      if (sortColumnIndex == columnIndex) {
        isAscending = !isAscending;
      } else {
        sortColumnIndex = columnIndex;
        isAscending = true;
      }

      _filteredRows.sort((a, b) {
        final aVal = a.modelList[columnIndex];
        final bVal = b.modelList[columnIndex];
        final aNum = num.tryParse(aVal);
        final bNum = num.tryParse(bVal);
        if (aNum != null && bNum != null) {
          return isAscending ? aNum.compareTo(bNum) : bNum.compareTo(aNum);
        } else {
          return isAscending ? aVal.compareTo(bVal) : bVal.compareTo(aVal);
        }
      });
    });
  }

  void _filterRows(String query) {
    setState(() {
      final queryNum = num.tryParse(query);
      _filteredRows = _rows.where((row) {
        return row.modelList.any((field) {
          final lowerField = field.toLowerCase();
          final matchText = lowerField.contains(query.toLowerCase());
          final fieldNum = num.tryParse(field);
          final matchNum = queryNum != null &&
              fieldNum != null &&
              fieldNum.toString().contains(queryNum.toString());
          return matchText || matchNum;
        });
      }).toList();
      _selectedRows = List<bool>.filled(_filteredRows.length, false);
      currentPage = 1;
    });
  }

  void _editRowInDialog(int index) {
    final realIndex = (currentPage - 1) * rowsPerPage + index;
    final row = _filteredRows[realIndex];
    final List<TextEditingController> editControllers = row.modelList
        .map((value) => TextEditingController(text: value))
        .toList();

    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "Edit",
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (_, __, ___) {
        return Center(
          child: Material(
            color: Colors.transparent,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [BoxShadow(blurRadius: 20, color: Colors.black12)],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.edit, size: 24, color: Colors.orange),
                      const SizedBox(width: 8),
                      const Text("Edit",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                      const Spacer(),
                      IconButton(
                          icon: const Icon(Icons.close, size: 26),
                          onPressed: () => Navigator.of(context).pop()),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Flexible(
                    child: SingleChildScrollView(
                      child: Wrap(
                        spacing: 20,
                        runSpacing: 16,
                        children: List.generate(editControllers.length, (i) {
                          return SizedBox(
                            width: 250,
                            child: TextFormField(
                              controller: editControllers[i],
                              decoration: InputDecoration(
                                labelText: widget.headers != null &&
                                        i < widget.headers!.length
                                    ? widget.headers![i]
                                    : 'Field ${i + 1}',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 12),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      icon: const Icon(Icons.save),
                      label: const Text("Save",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600)),
                      onPressed: () {
                        setState(() {
                          for (int i = 0; i < editControllers.length; i++) {
                            row.modelList[i] = editControllers[i].text;
                          }
                        });

                        Map<String, dynamic>? updatedJson;
                        final updated =
                            editControllers.map((c) => c.text).toList();

                        setState(() {
                          if (_filteredRows.isNotEmpty) {
                            final updatedRow =
                                DataTableModelStruct(modelList: updated);
                            _filteredRows[0] = updatedRow;
                            _rows[0] = updatedRow;
                            updatedJson = {
                              for (int i = 0; i < widget.headers!.length; i++)
                                widget.headers![i]:
                                    _parseValue(editControllers[i].text)
                            };
                            widget.updateData!(updatedJson);
                          }
                        });
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      transitionBuilder: (_, anim, __, child) {
        return SlideTransition(
          position:
              Tween<Offset>(begin: const Offset(0, -0.1), end: Offset.zero)
                  .animate(anim),
          child: FadeTransition(opacity: anim, child: child),
        );
      },
    );
  }

  dynamic _parseValue(String value) {
    if (value.trim().isEmpty) return null;
    final intVal = int.tryParse(value);
    return intVal ?? value;
  }

  @override
  Widget build(BuildContext context) {
    final columnCount = widget.headers?.length ?? 0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            children: [
              // SizedBox(
              //   width: 350,
              //   child: TextField(
              //     controller: _searchController,
              //     decoration: InputDecoration(
              //       hintText: 'Search...',
              //       suffixIcon: const Icon(Icons.search),
              //       contentPadding:
              //           const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
              //       border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(12)),
              //     ),
              //     onChanged: _filterRows,
              //   ),
              // ),
              const Spacer(),
              // IconButton(
              //   icon: const Icon(Icons.date_range),
              //   tooltip: "Filter by date",
              //   onPressed: () async {
              //     DateTimeRange? selectedRange;
              //     DateTime now = DateTime.now();

              //     await showDialog(
              //       context: context,
              //       builder: (context) {
              //         return StatefulBuilder(
              //           builder: (context, setState) {
              //             DateTime startDate = selectedRange?.start ??
              //                 now.subtract(const Duration(days: 7));
              //             DateTime endDate = selectedRange?.end ?? now;

              //             return AlertDialog(
              //               shape: RoundedRectangleBorder(
              //                   borderRadius: BorderRadius.circular(16)),
              //               titlePadding: EdgeInsets.zero,
              //               title: Container(
              //                 decoration: const BoxDecoration(
              //                   color: Color(0xffF06321),
              //                   borderRadius: BorderRadius.vertical(
              //                       top: Radius.circular(16)),
              //                 ),
              //                 padding: const EdgeInsets.all(16),
              //                 child: Row(
              //                   children: const [
              //                     Icon(Icons.date_range, color: Colors.white),
              //                     SizedBox(width: 10),
              //                     Text(
              //                       'Select Date Range',
              //                       style: TextStyle(
              //                           color: Colors.white,
              //                           fontSize: 18,
              //                           fontWeight: FontWeight.bold),
              //                     ),
              //                   ],
              //                 ),
              //               ),
              //               content: SizedBox(
              //                 width: 350,
              //                 height: 320,
              //                 child: Column(
              //                   children: [
              //                     CalendarDatePicker(
              //                       initialDate: startDate,
              //                       firstDate: DateTime(now.year - 5),
              //                       lastDate: DateTime(now.year + 5),
              //                       onDateChanged: (date) {
              //                         setState(() {
              //                           if (selectedRange == null) {
              //                             selectedRange = DateTimeRange(
              //                                 start: date, end: date);
              //                           } else {
              //                             if (date
              //                                 .isBefore(selectedRange!.start)) {
              //                               selectedRange = DateTimeRange(
              //                                   start: date,
              //                                   end: selectedRange!.end);
              //                             } else {
              //                               selectedRange = DateTimeRange(
              //                                   start: selectedRange!.start,
              //                                   end: date);
              //                             }
              //                           }
              //                         });
              //                       },
              //                     ),
              //                     const SizedBox(height: 12),
              //                     if (selectedRange != null)
              //                       Text(
              //                         'From: ${DateFormat.yMMMd().format(selectedRange!.start)}\nTo: ${DateFormat.yMMMd().format(selectedRange!.end)}',
              //                         textAlign: TextAlign.center,
              //                       ),
              //                   ],
              //                 ),
              //               ),
              //               actions: [
              //                 TextButton(
              //                   onPressed: () => Navigator.of(context).pop(),
              //                   child: const Text("Cancel"),
              //                 ),
              //                 ElevatedButton(
              //                   onPressed: () {
              //                     if (selectedRange != null) {
              //                       Navigator.of(context).pop();
              //                       // Do something with selectedRange
              //                       ScaffoldMessenger.of(context)
              //                           .showSnackBar(SnackBar(
              //                         content: Text(
              //                             "Selected: ${DateFormat.yMMMd().format(selectedRange!.start)} - ${DateFormat.yMMMd().format(selectedRange!.end)}"),
              //                         backgroundColor: const Color(0xffF06321),
              //                       ));
              //                     }
              //                   },
              //                   style: ElevatedButton.styleFrom(
              //                     backgroundColor: const Color(0xffF06321),
              //                   ),
              //                   child: const Text("Apply"),
              //                 ),
              //               ],
              //             );
              //           },
              //         );
              //       },
              //     );
              //   },
              // ),
              SizedBox(width: 10),
              DropdownButton<int>(
                value: rowsPerPage,
                borderRadius: BorderRadius.circular(12),
                items: [8, 10, 20, 50].map((count) {
                  return DropdownMenuItem<int>(
                      value: count, child: Text("$count per page"));
                }).toList(),
                onChanged: (value) {
                  if (value != null) {
                    setState(() {
                      rowsPerPage = value;
                      currentPage = 1;
                    });
                  }
                },
              ),
              const SizedBox(width: 10),
              Text("Page $currentPage of $totalPages"),
            ],
          ),
        ),

        /// Table Body
        Expanded(
          child: Scrollbar(
            thumbVisibility: true,
            controller: _horizontalScrollController,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              controller: _horizontalScrollController,
              child: SizedBox(
                width: columnCount * 250 + 150,
                child: Column(
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
                            // child:
                            // Checkbox(
                            //   value: _selectedRows.isNotEmpty &&
                            //       _selectedRows.every((e) => e),
                            //   onChanged: (value) {
                            //     setState(() {
                            //       selectedRowData.clear();
                            //       for (int i = 0;
                            //           i < _selectedRows.length;
                            //           i++) {
                            //         _selectedRows[i] = value ?? false;
                            //         if (value == true) {
                            //           selectedRowData.add(_filteredRows[i]);
                            //         }
                            //       }
                            //     });
                            //     widget.callBackSelectedRows
                            //         ?.call(selectedRowData);
                            //   },
                            //   checkColor: const Color(0xffF06321),
                            //   fillColor:
                            //       MaterialStateProperty.all(Colors.white),
                            // ),
                          ),
                          for (int i = 0; i < columnCount; i++)
                            SizedBox(
                              width: 250,
                              child: InkWell(
                                onTap: () => _sortColumn(i),
                                child: Row(
                                  children: [
                                    Text(
                                      widget.headers![i],
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
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
                          const SizedBox(width: 60),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      child: Scrollbar(
                        thumbVisibility: true,
                        controller: _verticalScrollController,
                        child: ListView.builder(
                          controller: _verticalScrollController,
                          itemCount: paginatedRows.length,
                          itemBuilder: (context, index) {
                            final row = paginatedRows[index];
                            final realIndex =
                                (currentPage - 1) * rowsPerPage + index;

                            return Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  border:
                                      Border.all(color: Colors.grey.shade300),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 40,
                                      height: 50,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.deepOrange,
                                              width: 2),
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        child: IconButton(
                                          icon: const Icon(Icons.edit,
                                              color: Colors.deepOrange),
                                          onPressed: () {
                                            showDialog(
                                              context: context,
                                              builder: (_) => AlertDialog(
                                                title: const Text(
                                                    "Edit Confirmation"),
                                                content: const Text(
                                                    "Are you sure you want to edit this row?"),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.of(context)
                                                            .pop(),
                                                    child: const Text("Cancel"),
                                                  ),
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                      _editRowInDialog(index);
                                                    },
                                                    child: const Text("OK"),
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        ),
                                      ),

                                      // Checkbox(
                                      //   value: _selectedRows[realIndex],
                                      //   onChanged: (value) {
                                      //     setState(() {
                                      //       _selectedRows[realIndex] =
                                      //           value ?? false;
                                      //       if (value == true &&
                                      //           !selectedRowData
                                      //               .contains(row)) {
                                      //         selectedRowData.add(row);
                                      //       } else {
                                      //         selectedRowData.remove(row);
                                      //       }
                                      //     });
                                      //     widget.callBackSelectedRows
                                      //         ?.call(selectedRowData);
                                      //   },
                                      // ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    for (int i = 0;
                                        i < row.modelList.length;
                                        i++)
                                      SizedBox(
                                        width: 250,
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text(
                                            row.modelList[i],
                                            style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                          ),
                                        ),
                                      ),

                                    // IconButton(
                                    //   icon: const Icon(Icons.delete,
                                    //       color: Colors.red),
                                    //   onPressed: () {
                                    //     showDialog(
                                    //       context: context,
                                    //       builder: (_) => AlertDialog(
                                    //         title: const Text(
                                    //             "Delete Confirmation"),
                                    //         content: const Text(
                                    //             "Are you sure you want to delete this row?"),
                                    //         actions: [
                                    //           TextButton(
                                    //               onPressed: () =>
                                    //                   Navigator.of(context)
                                    //                       .pop(),
                                    //               child: const Text("Cancel")),
                                    //           TextButton(
                                    //             onPressed: () {
                                    //               setState(() {
                                    //                 _rows.remove(row);
                                    //                 _filterRows(
                                    //                     _searchController.text);
                                    //               });
                                    //               Navigator.of(context).pop();
                                    //             },
                                    //             child: const Text("Delete",
                                    //                 style: TextStyle(
                                    //                     color: Colors.red)),
                                    //           ),
                                    //         ],
                                    //       ),
                                    //     );
                                    //   },
                                    // ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),

        const SizedBox(height: 10),

        /// Pagination
        SizedBox(
          height: 50,
          child: NumberPagination(
            onPageChanged: (int pageNumber) {
              setState(() {
                currentPage = pageNumber;
              });
            },
            visiblePagesCount: 5,
            totalPages: totalPages,
            currentPage: currentPage,
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
