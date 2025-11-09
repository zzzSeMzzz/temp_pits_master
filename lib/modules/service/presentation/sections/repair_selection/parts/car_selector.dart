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
                          Expanded(flex: 4, child: _buildCell(_cellIds[1][0])),
                          Expanded(flex: 2, child: _buildCell(_cellIds[1][1])),
                          Expanded(flex: 2, child: _buildCell(_cellIds[1][2])),
                          Expanded(flex: 4, child: _buildCell(_cellIds[1][3])),
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
                          Expanded(flex: 4, child: _buildCell(_cellIds[3][0])),
                          Expanded(flex: 2, child: _buildCell(_cellIds[3][1])),
                          Expanded(flex: 2, child: _buildCell(_cellIds[3][2])),
                          Expanded(flex: 4, child: _buildCell(_cellIds[3][3])),
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

    //debugPrint('Building cell $cellId, selected: $isSelected');

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withValues(alpha: 0.5), width: 1),
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

  List<String> getSelectedCellsNamed() {
    return _selectedCells.entries
        .where((entry) => entry.value)
        .map((entry) => _partIdToName(entry.key))
        .toList();
  }

  void clearSelection() {
    setState(() {
      _selectedCells.clear();
    });
  }

  String _partIdToName(int partId) {
    switch (partId) {
      case 0: return 'part-16';
      case 1: return 'part-23';
      case 2: return 'part-14';
      case 3: return 'part-17';
      case 4: return 'part-20';
      case 5: return 'part-24';
      case 6: return 'part-0';
      case 7: return 'part-4';
      case 8: return 'part-6';
      case 9: return 'part-6';//????
      case 10: return 'part-12';
      case 11: return 'part-9';
      case 12: return 'part-27';
      case 13: return 'part-28';
      case 14: return 'part-31';
      case 15: return 'part-35';
      case 16: return 'part-26';
      case 17: return 'part-34';
      default: return '';
    }
  }
  /*
  id="part-0” > передний бампер
id="part-2” > передняя левая фара
id="part-3” > передняя правая фара
id="part-1” > передний номерной знак
id="part-4” > капот
id="part-5” > переднее стекло
id="part-6” > крыша
id="part-9” > задний бампер
id="part-13”> фаркоп
id="part-11” > задний номерной знак
id="part-12” > задняя правая фара
id="part-10” > задняя левая фара
id="part-15” > левое переднее колесо, резина
id="part-16" > левое переднее колесо, диск
id="part-22” > левое заднее колесо, резина
id="part-23" > левое заднее колесо, диск
id="part-14" > левое переднее крыло
id="part-17” > левое передняя дверь
id="part-19” > левое переднее стекло
id="part-21" > левое заднее стекло
id="part-18" > левое зеркало
id="part-20” > левое задняя дверь
id="part-24" > левое заднее крыло
id="part-27" > правое переднее крыло
id="part-28" > правое передняя дверь
id="part-30" > правое переднее стекло
id="part-32” > правое заднее стекло
id="part-29" > правое зеркало
id="part-31" > правое задняя дверь
id="part-35" > правое заднее крыло
id="part-25" > правое переднее колесо, резина
id="part-26" > правое переднее колесо, диск
id="part-33" > правое заднее колесо, резина
id="part-34" > правое заднее колесо, диск
Axile 1
id="part-36” > левый тормозной диск
id="part-37" > левый армотизатор
id="part-37" > правый армотизатор
id="part-39" > правый тормозной диск
Axile 2
id="part-40” > левый тормозной диск
id="part-41” > левый армотизатор
id="part-42" > правый армотизатор
id="part-43" > правый тормозной диск
Other:
id="part-44” > кондиционер
id="part-45" > электрика
id="part-46" > механика
id="part-47" > масла
id="part-48” > горячий мотор
   */
}
