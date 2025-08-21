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

class StyledDropdown extends StatefulWidget {
  const StyledDropdown(
      {super.key,
      this.width,
      this.height,
      required this.items,
      required this.fontSize,
      required this.borderRadius,
      required this.menuBackgroundColor,
      required this.dropdownListBackgroundColor,
      required this.listTextColor,
      required this.menuTextColor,
      required this.dropdownOffsetY,
      this.onItemSelected,
      required this.initialValue,
      required this.labels});

  final double? width;
  final double? height;
  final List<String> items;
  final double fontSize;
  final double borderRadius;
  final Color menuBackgroundColor;
  final Color dropdownListBackgroundColor;
  final Color listTextColor;
  final Color menuTextColor;
  final double dropdownOffsetY;
  final Future Function(String onSelect)? onItemSelected;
  final String initialValue;
  final List<String> labels;

  @override
  State<StyledDropdown> createState() => _StyledDropdownState();
}

class _StyledDropdownState extends State<StyledDropdown> {
  final GlobalKey _key = GlobalKey();
  OverlayEntry? _overlayEntry;
  bool _isDropdownOpen = false;
  String? _selectedValue;

  @override
  void initState() {
    super.initState();
    // Run after first build to avoid null context & data
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && widget.items.isNotEmpty) {
        setState(() {
          _selectedValue = widget.initialValue.isNotEmpty &&
                  widget.items.contains(widget.initialValue)
              ? widget.initialValue
              : widget.items.first;
        });
      }
    });
    // _selectedValue = widget.initialValue;
  }

  void _toggleDropdown() {
    if (_isDropdownOpen) {
      _closeDropdown();
    } else {
      _openDropdown();
    }
  }

  void _openDropdown() {
    final RenderBox renderBox =
        _key.currentContext!.findRenderObject() as RenderBox;
    final position = renderBox.localToGlobal(Offset.zero);

    _overlayEntry = OverlayEntry(
      builder: (context) {
        return Stack(
          children: [
            Positioned.fill(
              child: GestureDetector(
                onTap: _closeDropdown,
                behavior: HitTestBehavior.translucent,
                child: Container(),
              ),
            ),
            Positioned(
              left: position.dx,
              top: position.dy + renderBox.size.height + widget.dropdownOffsetY,
              width: renderBox.size.width,
              child: Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(widget.borderRadius),
                child: Container(
                  decoration: BoxDecoration(
                    color: widget.dropdownListBackgroundColor,
                    borderRadius: BorderRadius.circular(widget.borderRadius),
                  ),
                  // Limit dropdown height to show only 5 items max
                  constraints: const BoxConstraints(
                    maxHeight: 56.0 * 5, // Approx. height for 5 ListTile items
                  ),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    children: widget.items.map((item) {
                      final label =
                          (widget.labels.length == widget.items.length)
                              ? widget.labels[widget.items.indexOf(item)]
                              : item;

                      final isSelected = item == _selectedValue;
                      return ListTile(
                        title: Text(
                          label,
                          style: TextStyle(
                            fontSize: widget.fontSize,
                            color: isSelected
                                ? widget.menuTextColor
                                : widget.listTextColor,
                            fontWeight: isSelected
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _selectedValue = item;
                          });
                          widget.onItemSelected?.call(item);
                          _closeDropdown();
                        },
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );

    Overlay.of(context)!.insert(_overlayEntry!);
    setState(() {
      _isDropdownOpen = true;
    });
  }

  void _closeDropdown() {
    _overlayEntry?.remove();
    _overlayEntry = null;
    setState(() {
      _isDropdownOpen = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Null or empty safety check for FlutterFlow binding delay
    if (widget.items == null ||
        widget.labels == null ||
        widget.items.isEmpty ||
        widget.labels.isEmpty ||
        widget.labels.length != widget.items.length) {
      return const SizedBox.shrink();
    }

    // Fallback for selected value if not initialized
    _selectedValue ??= widget.initialValue.isNotEmpty &&
            widget.items.contains(widget.initialValue)
        ? widget.initialValue
        : widget.items.first;

    final displayText =
        widget.labels[widget.items.indexOf(_selectedValue ?? '')];

    return GestureDetector(
      key: _key,
      onTap: _toggleDropdown,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          color: widget.menuBackgroundColor,
          borderRadius: BorderRadius.circular(widget.borderRadius),
          border: Border.all(color: Colors.grey.shade400),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              displayText,
              style: TextStyle(
                fontSize: widget.fontSize,
                color: widget.menuTextColor,
              ),
            ),
            Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
                border: Border.all(
                  color: widget.menuTextColor,
                  width: 2,
                ),
              ),
              child: Center(
                child: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: widget.menuTextColor,
                  size: 22.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
