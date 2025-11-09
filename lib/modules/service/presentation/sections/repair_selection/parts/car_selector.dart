import 'package:flutter/material.dart';
import '../../../../../../assets/constants/app_images.dart';

class CarSelector extends StatelessWidget {
  const CarSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Stack(
        children: [
          // Получаем размеры изображения
          Image.asset(
            AppImages.carSelection2,
            fit: BoxFit.cover,
            width: double.maxFinite,
          ),

          // Сетка, которая занимает всю высоту изображения
          Positioned.fill(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Column(
                  children: [
                    // Первая строка (flex: 1) - 2 ячейки
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: _buildCells(2),
                      ),
                    ),

                    // Вторая строка (flex: 1) - 4 ячейки
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Expanded(flex: 2, child: _buildCell()), // 20%
                          Expanded(flex: 3, child: _buildCell()), // 30%
                          Expanded(flex: 3, child: _buildCell()), // 30%
                          Expanded(flex: 2, child: _buildCell()), // 20%
                        ],
                      ),
                    ),

                    // Третья строка (flex: 3) - 6 ячеек
                    Expanded(
                      flex: 3,
                      child: Row(
                        children: [
                          Expanded(flex: 1, child: _buildCell()), // 10%
                          Expanded(flex: 3, child: _buildCell()), // 30%
                          Expanded(flex: 2, child: _buildCell()), // 20%
                          Expanded(flex: 2, child: _buildCell()), // 20%
                          Expanded(flex: 1, child: _buildCell()), // 10%
                          Expanded(flex: 1, child: _buildCell()), // 10%
                        ],
                      ),
                    ),

                    // Четвертая строка (flex: 1) - 4 ячейки
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Expanded(flex: 2, child: _buildCell()), // 20%
                          Expanded(flex: 3, child: _buildCell()), // 30%
                          Expanded(flex: 3, child: _buildCell()), // 30%
                          Expanded(flex: 2, child: _buildCell()), // 20%
                        ],
                      ),
                    ),

                    // Пятая строка (flex: 1) - 2 ячейки
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: _buildCells(2),
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

  List<Widget> _buildCells(int count) {
    return List.generate(count, (index) => Expanded(child: _buildCell()));
  }

  Widget _buildCell() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(0.5), width: 1),
      ),
    );
  }
}
