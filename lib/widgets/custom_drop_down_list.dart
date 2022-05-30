import 'package:drop_down_list/drop_down_list.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';

class CustomDropDownList extends StatefulWidget {
  final List<SelectedListItem> list;
  final String title;
  final String selected;
  final ValueChanged<String>? onChange;

  const CustomDropDownList({
    Key? key,
    required this.list,
    required this.title,
    required this.selected,
    this.onChange,
  }) : super(key: key);

  @override
  State<CustomDropDownList> createState() => _CustomDropDownListState();

  static List<SelectedListItem> toSelectedListItem(List<String> list) {
    List<SelectedListItem> result = [];

    list
      ..forEach((element) {
        result.add(SelectedListItem(false, element));
      });
    return result;
  }
}

class _CustomDropDownListState extends State<CustomDropDownList> {
  TextEditingController _searchTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8, left: 8),
          child: Text(widget.title),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: CustomButton(
            borderRadius: 8,
            child: Text(widget.selected),
            onPressed: () {
              DropDownState(
                DropDown(
                  // submitButtonText: 'kDone',
                  submitButtonColor: const Color.fromRGBO(70, 76, 222, 1),
                  searchHintText: 'Search',
                  // bottomSheetTitle: 'kCities',
                  searchBackgroundColor: Colors.black12,
                  dataList: widget.list,
                  selectedItems: (List<dynamic> selectedList) {},
                  selectedItem: (String selected) => widget.onChange!(selected),
                  enableMultipleSelection: false,
                  searchController: _searchTextEditingController,
                ),
              ).showModal(context);
            },
          ),
        )
      ],
    );
  }
}
