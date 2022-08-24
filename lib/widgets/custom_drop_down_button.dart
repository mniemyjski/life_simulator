import 'package:dropdown_button2/dropdown_button2.dart';
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

  List<int> _getDividersIndexes() {
    List<int> dividersIndexes = [];
    for (var i = 0; i < (widget.items.length * 2) - 1; i++) {
      if (i.isOdd) {
        dividersIndexes.add(i);
      }
    }
    return dividersIndexes;
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
                item,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          ),
          if (item != widget.items.last)
            const DropdownMenuItem<String>(
              enabled: false,
              child: Divider(),
            ),
        ],
      );
    }
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        isExpanded: true,
        items: _addDividersAfterItems(),
        customItemsIndexes: _getDividersIndexes(),
        customItemsHeight: 4,
        value: selectedItem,
        onChanged: (value) {
          setState(() {
            selectedItem = value as String;
            widget.onChanged!(value);
          });
        },
        buttonDecoration: BoxDecoration(
          border: Border.all(
            color: Colors.black26,
          ),
          color: Colors.white,
        ),
        buttonHeight: 40,
        buttonWidth: 180,
        itemHeight: 40,
        itemPadding: const EdgeInsets.symmetric(horizontal: 8.0),
        buttonElevation: 2,
      ),
    );
  }
}
