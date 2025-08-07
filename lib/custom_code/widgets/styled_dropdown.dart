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
  const StyledDropdown({
    super.key,
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
  });

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
    _selectedValue = widget.initialValue;
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
            // Tap outside to close
            Positioned.fill(
              child: GestureDetector(
                onTap: _closeDropdown,
                behavior: HitTestBehavior.translucent,
                child: Container(),
              ),
            ),

            // Dropdown list
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
                  child: Container(
                    constraints: BoxConstraints(
                      maxHeight: widget.fontSize * 4.4 * 4, // Show max 5 items
                    ),
                    child: ListView(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      children: widget.items.map((item) {
                        final isSelected = item == _selectedValue;
                        return ListTile(
                          title: Text(
                            item,
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
              _selectedValue ?? 'Select',
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
