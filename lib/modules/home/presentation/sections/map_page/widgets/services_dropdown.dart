import 'package:flutter/material.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/modules/home/data/model/service.dart';

class ServicesDropdown extends StatefulWidget {
  final List<ServiceModel> allServices;
  final Set<ServiceModel> selectedServices;
  final Function(Set<ServiceModel>) onServicesChanged;

  const ServicesDropdown({
    Key? key,
    required this.allServices,
    required this.selectedServices,
    required this.onServicesChanged,
  }) : super(key: key);

  @override
  State<ServicesDropdown> createState() => _ServicesDropdownState();
}

class _ServicesDropdownState extends State<ServicesDropdown> {
  bool _isExpanded = false;
  late Set<ServiceModel> _localSelectedServices;

  @override
  void initState() {
    super.initState();
    _localSelectedServices = Set<ServiceModel>.from(widget.selectedServices);
  }

  @override
  void didUpdateWidget(ServicesDropdown oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.selectedServices != widget.selectedServices) {
      _localSelectedServices = Set<ServiceModel>.from(widget.selectedServices);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Кнопка для открытия/закрытия списка
        GestureDetector(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: Container(
            width: double.infinity, // Растягиваем по ширине
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.grey.shade300),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              mainAxisSize: MainAxisSize.max, // Растягиваем Row
              children: [
                Icon(
                  _isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  color: black,
                ),
                const SizedBox(width: 8),
                Text(
                  'Servicio',
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: black,
                      ),
                ),
                const Spacer(),
                if (_localSelectedServices.isNotEmpty) ...[
                  const SizedBox(width: 8),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: black,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      '${_localSelectedServices.length}',
                      style: const TextStyle(
                        color: white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),

        // Выпадающий список услуг
        if (_isExpanded)
          Container(
            margin: const EdgeInsets.only(top: 8),
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.grey.shade300),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            constraints: const BoxConstraints(maxHeight: 300),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: widget.allServices.length,
              itemBuilder: (context, index) {
                final service = widget.allServices[index];
                final isSelected = _localSelectedServices.contains(service);

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      if (isSelected) {
                        _localSelectedServices.remove(service);
                      } else {
                        _localSelectedServices.add(service);
                      }
                      // Передаем обновленную копию обратно в BLoC
                      widget.onServicesChanged(
                          Set<ServiceModel>.from(_localSelectedServices));
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      color: isSelected ? black.withValues(alpha: 0.1) : null,
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey.shade200,
                          width: 0.5,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          isSelected
                              ? Icons.check_circle
                              : Icons.radio_button_unchecked,
                          color: isSelected ? black : Colors.grey.shade400,
                          size: 20,
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            service.name,
                            style: TextStyle(
                              fontWeight: isSelected
                                  ? FontWeight.w600
                                  : FontWeight.w400,
                              color: isSelected ? black : Colors.grey.shade700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
      ],
    );
  }
}
