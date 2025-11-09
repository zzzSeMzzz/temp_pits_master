import 'package:flutter/material.dart';
import 'package:pits_app/core/data/extensions.dart';
import '../../../../../../assets/constants/app_images.dart';

class CarSelector extends StatefulWidget {
  const CarSelector({Key? key}) : super(key: key);

  @override
  State<CarSelector> createState() => _CarSelectorState();
}

class _CarSelectorState extends State<CarSelector> {
  final Map<int, bool> _selectedCells = {};
  late final List<List<int>> _cellIds; // Храним матрицу id

  @override
  void initState() {
    super.initState();
    _initializeCellIds();
  }

  void _initializeCellIds() {
    // Создаем матрицу id согласно структуре сетки
    _cellIds = [
      // Первая колонка - 2 ячейки
      [0, 1],
      // Вторая колонка - 4 ячейки
      [2, 3, 4, 5],
      // Третья колонка - 6 ячеек
      [6, 7, 8, 9, 10, 11],
      // Четвертая колонка - 4 ячейки
      [12, 13, 14, 15],
      // Пятая колонка - 2 ячейки
      [16, 17],
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Stack(
        children: [
          Image.asset(
            AppImages.carSelection2,
            fit: BoxFit.cover,
            width: double.maxFinite,
          ),
          Positioned.fill(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Row(
                  children: [
                    // Первая колонка
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Expanded(child: _buildCell(_cellIds[0][0])),
                          Expanded(child: _buildCell(_cellIds[0][1])),
                        ],
                      ),
                    ),
                    // Вторая колонка
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Expanded(flex: 2, child: _buildCell(_cellIds[1][0])),
                          Expanded(flex: 3, child: _buildCell(_cellIds[1][1])),
                          Expanded(flex: 3, child: _buildCell(_cellIds[1][2])),
                          Expanded(flex: 2, child: _buildCell(_cellIds[1][3])),
                        ],
                      ),
                    ),
                    // Третья колонка
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Expanded(flex: 1, child: _buildCell(_cellIds[2][0])),
                          Expanded(flex: 3, child: _buildCell(_cellIds[2][1])),
                          Expanded(flex: 2, child: _buildCell(_cellIds[2][2])),
                          Expanded(flex: 2, child: _buildCell(_cellIds[2][3])),
                          Expanded(flex: 1, child: _buildCell(_cellIds[2][4])),
                          Expanded(flex: 1, child: _buildCell(_cellIds[2][5])),
                        ],
                      ),
                    ),
                    // Четвертая колонка
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Expanded(flex: 2, child: _buildCell(_cellIds[3][0])),
                          Expanded(flex: 3, child: _buildCell(_cellIds[3][1])),
                          Expanded(flex: 3, child: _buildCell(_cellIds[3][2])),
                          Expanded(flex: 2, child: _buildCell(_cellIds[3][3])),
                        ],
                      ),
                    ),
                    // Пятая колонка
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Expanded(child: _buildCell(_cellIds[4][0])),
                          Expanded(child: _buildCell(_cellIds[4][1])),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCell(int cellId) {
    final isSelected = _selectedCells[cellId] ?? false;

    debugPrint('Building cell $cellId, selected: $isSelected');

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withValues(alpha: 0.8), width: 1),
      ),
      child: isSelected ? const SizedBox(
        width: double.infinity,
        child: Icon(Icons.check, color: Colors.red)
      ) : null,
    ).onTap(() {
      debugPrint('Tapped cell $cellId');
      _toggleSelection(cellId, !isSelected);
    });
  }

  void _toggleSelection(int cellId, bool isSelected) {
    setState(() {
      _selectedCells[cellId] = isSelected;
      debugPrint('Cell $cellId selection changed to: $isSelected');
    });
  }

  List<int> getSelectedCells() {
    return _selectedCells.entries
        .where((entry) => entry.value)
        .map((entry) => entry.key)
        .toList();
  }

  void clearSelection() {
    setState(() {
      _selectedCells.clear();
    });
  }
}
