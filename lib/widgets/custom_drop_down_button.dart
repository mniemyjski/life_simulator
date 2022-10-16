import 'dart:ui';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CustomDropDownButton extends StatefulWidget {
  final List<String> items;
  final String? initialValue;
  final ValueChanged<String>? onChanged;
  const CustomDropDownButton({Key? key, required this.items, this.initialValue, this.onChanged})
      : super(key: key);

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  late String selectedItem;

  @override
  void initState() {
    selectedItem = widget.initialValue ?? widget.items.first;
    super.initState();
  }

  List<DropdownMenuItem<String>> _addDividersAfterItems() {
    List<DropdownMenuItem<String>> menuItems = [];
    for (var item in widget.items) {
      menuItems.addAll(
        [
          DropdownMenuItem<String>(
            value: item,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                item.tr(),
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
          ),
          if (item != widget.items.last)
            const DropdownMenuItem<String>(
              enabled: false,
              child: Divider(
                color: Colors.white,
              ),
            ),
        ],
      );
    }
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                const Color.fromRGBO(1, 132, 194, 1.0).withOpacity(0.6),
                Colors.blueGrey.withOpacity(0.1),
              ],
            ),
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(width: 1, color: Colors.white10),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton2(
              isExpanded: true,
              items: _addDividersAfterItems(),
              value: selectedItem,
              onChanged: (value) {
                setState(() {
                  selectedItem = value as String;
                  widget.onChanged!(value);
                });
              },
              style: Theme.of(context).textTheme.bodyText2,
              buttonDecoration: BoxDecoration(
                border: Border.all(
                  color: Colors.transparent,
                ),
                color: Colors.transparent,
              ),
              dropdownDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromRGBO(0, 83, 143, 1),
                    Colors.black,
                  ],
                ),
              ),
              buttonHeight: 40,
              buttonWidth: 160,
              itemHeight: 20,
              itemPadding: const EdgeInsets.symmetric(horizontal: 8.0),
              buttonElevation: 2,
              offset: const Offset(0, -4),
            ),
          ),
        ),
      ),
    );
  }
}
