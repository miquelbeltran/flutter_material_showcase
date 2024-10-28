import 'dart:math';

import 'package:flutter/material.dart';

class CustomWidget extends StatefulWidget {
  const CustomWidget({Key? key}) : super(key: key);

  @override
  State<CustomWidget> createState() => _CustomWidgetState();
}

class _CustomWidgetState extends State<CustomWidget> {
  // Icons definition
  static const IconData hiddenIcon = Icons.code;
  static const IconData codeIcon = Icons.check_circle_outline;
  static const IconData bugIcon = Icons.bug_report;
  late final Color selectedColor;
  late final Color unselectedColor;
  late final Color bugColor;

  // Game state
  late List<bool> _isRevealed;
  late int _bugPosition;
  late bool _gameOver;

  @override
  void initState() {
    super.initState();
    _setupGame();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // Initialize colors here since we need context
    selectedColor = Theme.of(context).colorScheme.primary;
    unselectedColor = Theme.of(context).disabledColor;
    bugColor = Theme.of(context).colorScheme.error;
  }

  void _setupGame() {
    // Initialize 8 cells (2 rows x 4 columns)
    _isRevealed = List.generate(8, (_) => false);
    // Randomly place 1 bug
    _bugPosition = Random().nextInt(8);
    _gameOver = false;
  }

  void _handleCellTap(int index) {
    if (_gameOver || _isRevealed[index]) return;

    setState(() {
      _isRevealed[index] = true;

      if (index == _bugPosition) {
        // If bug is found, reveal it
        _gameOver = true;

        // Schedule game reset after a delay
        Future.delayed(const Duration(seconds: 2), () {
          if (mounted) {
            setState(() {
              _setupGame();
            });
          }
        });
      } else {
        // Check if all non-bug cells are revealed (win condition)
        bool allNonBugsRevealed = true;
        for (int i = 0; i < _isRevealed.length; i++) {
          if (i != _bugPosition && !_isRevealed[i]) {
            allNonBugsRevealed = false;
            break;
          }
        }

        if (allNonBugsRevealed) {
          _gameOver = true;
          // Show the bug position on win
          _isRevealed[_bugPosition] = true;

          // Schedule game reset after a delay
          Future.delayed(const Duration(seconds: 2), () {
            if (mounted) {
              setState(() {
                _setupGame();
              });
            }
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildRow(0, 4),
            _buildRow(4, 8),
          ],
        ),
      ),
    );
  }

  Widget _buildRow(
    int start,
    int end,
  ) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        end - start,
        (index) {
          final cellIndex = start + index;
          return IconButton(
            onPressed: () => _handleCellTap(cellIndex),
            isSelected: _isRevealed[cellIndex],
            color: _isRevealed[cellIndex]
                ? cellIndex == _bugPosition
                    ? bugColor
                    : selectedColor
                : unselectedColor,
            icon: _isRevealed[cellIndex]
                ? Icon(cellIndex == _bugPosition ? bugIcon : codeIcon)
                : const Icon(hiddenIcon),
          );
        },
      ),
    );
  }
}
