import 'package:flutter/material.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/modules/home/domain/entity/service_category.dart';
import 'package:collection/collection.dart';

typedef OnCategoryClick = void Function(ServiceCategory catagory);

class TypeSelector extends StatelessWidget {
  final List<ServiceCategory> categories;
  final int? selectedCategoryId;
  final OnCategoryClick onCategoryClick;

  const TypeSelector({
    Key? key,
    required this.categories,
    required this.onCategoryClick,
    required this.selectedCategoryId,
  }) : super(key: key);

  Widget box(BuildContext context, int index, String title, bool isSelected,
      VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        margin: const EdgeInsets.only(right: 10),
        height: 36,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: isSelected ? black : white),
        duration: const Duration(milliseconds: 200),
        width: 126,
        child: Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: isSelected ? white : black),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: categories.mapIndexed((index, cat) {
              final isSelected = cat.id == selectedCategoryId;
              return box(
                context,
                index,
                cat.name,
                isSelected,
                () => onCategoryClick(cat),
              );
            }).toList(),
          ),
        ),
      );
}
