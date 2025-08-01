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

import 'dart:math' as math;

class PaginationWithDots extends StatefulWidget {
  const PaginationWithDots({
    super.key,
    this.width,
    this.height,
    required this.listttt,
    required this.indexFull,
  });

  final double? width;
  final double? height;
  final Future Function(int indexSelected) listttt;
  final int indexFull;

  @override
  State<PaginationWithDots> createState() => _PaginationWithDotsState();
}

class _PaginationWithDotsState extends State<PaginationWithDots> {
  int _currentIndex = 0;
  int _startWindow = 0;
  final int _maxVisible = 3;

  @override
  void didUpdateWidget(covariant PaginationWithDots oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.indexFull != widget.indexFull) {
      setState(() {
        _currentIndex = 0;
        _startWindow = 0;
      });

      // Optionally call first page
      widget.listttt(0);
    }
  }

  void _onPageTap(int index) async {
    if (index < _startWindow) {
      _startWindow = index;
    } else if (index >= _startWindow + _maxVisible) {
      _startWindow =
          (index - _maxVisible + 1).clamp(0, widget.indexFull - _maxVisible);
    }

    setState(() {
      _currentIndex = index;
    });

    await widget.listttt(index);
  }

  void _goToFirst() {
    setState(() {
      _startWindow = 0;
    });
    _onPageTap(0);
  }

  void _goToLast() {
    setState(() {
      _startWindow = math.max(0, widget.indexFull - _maxVisible);
    });
    _onPageTap(widget.indexFull - 1);
  }

  void _moveBackChunk() {
    setState(() {
      _startWindow =
          (_startWindow - _maxVisible).clamp(0, widget.indexFull - _maxVisible);
    });
  }

  void _moveForwardChunk() {
    setState(() {
      _startWindow =
          (_startWindow + _maxVisible).clamp(0, widget.indexFull - _maxVisible);
    });
  }

  List<Widget> _buildPageButtons() {
    List<Widget> buttons = [];

    final total = widget.indexFull;
    final endWindow = (_startWindow + _maxVisible).clamp(0, total);

    final showStartEllipsis = _startWindow > 0;
    final showEndEllipsis = endWindow < total;

    if (showStartEllipsis) {
      buttons.add(_pageButton(0));
      buttons.add(_ellipsis(onTap: _moveBackChunk));
    }

    for (int i = _startWindow; i < endWindow; i++) {
      buttons.add(_pageButton(i));
    }

    if (showEndEllipsis) {
      buttons.add(_ellipsis(onTap: _moveForwardChunk));
      buttons.add(_pageButton(total - 1));
    }

    return buttons;
  }

  Widget _ellipsis({required VoidCallback onTap}) => InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Text(
            '...',
            style: TextStyle(
              fontSize: 15,
              color: Color(0xffE3530F),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );

  Widget _pageButton(int index) {
    final isSelected = index == _currentIndex;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: ElevatedButton(
        onPressed: () => _onPageTap(index),
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? Color(0xffE3530F) : Colors.grey[200],
          foregroundColor: isSelected ? Colors.white : Colors.black,
          minimumSize: Size(40, 36),
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text('${index + 1}'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isAtFirst = _currentIndex == 0;
    final isAtLast = _currentIndex >= widget.indexFull - 1;

    return Container(
      width: widget.width,
      height: widget.height,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.first_page, color: Color(0xffE3530F)),
            onPressed: isAtFirst ? null : _goToFirst,
          ),
          IconButton(
            icon: Icon(Icons.chevron_left, color: Color(0xffE3530F)),
            onPressed: isAtFirst ? null : () => _onPageTap(_currentIndex - 1),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPageButtons(),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.chevron_right, color: Color(0xffE3530F)),
            onPressed: isAtLast ? null : () => _onPageTap(_currentIndex + 1),
          ),
          IconButton(
            icon: Icon(Icons.last_page, color: Color(0xffE3530F)),
            onPressed: isAtLast ? null : _goToLast,
          ),
        ],
      ),
    );
  }
}
