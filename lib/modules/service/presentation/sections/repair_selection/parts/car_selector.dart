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
          // Фоновая картинка
          Image.asset(
            AppImages.carSelection2,
            fit: BoxFit.cover,
            width: double.maxFinite,
          ),

          // Сетка, которая занимает всю высоту изображения (повернутая на 90 градусов)
          Positioned.fill(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Row( // Меняем Column на Row
                  children: [
                    // Первая колонка (flex: 1) - 2 ячейки
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: _buildCells(2),
                      ),
                    ),

                    // Вторая колонка (flex: 1) - 4 ячейки
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Expanded(flex: 2, child: _buildCell()), // 20%
                          Expanded(flex: 3, child: _buildCell()), // 30%
                          Expanded(flex: 3, child: _buildCell()), // 30%
                          Expanded(flex: 2, child: _buildCell()), // 20%
                        ],
                      ),
                    ),

                    // Третья колонка (flex: 3) - 6 ячеек
                    Expanded(
                      flex: 3,
                      child: Column(
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

                    // Четвертая колонка (flex: 1) - 4 ячейки
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Expanded(flex: 2, child: _buildCell()), // 20%
                          Expanded(flex: 3, child: _buildCell()), // 30%
                          Expanded(flex: 3, child: _buildCell()), // 30%
                          Expanded(flex: 2, child: _buildCell()), // 20%
                        ],
                      ),
                    ),

                    // Пятая колонка (flex: 1) - 2 ячейки
                    Expanded(
                      flex: 1,
                      child: Column(
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
