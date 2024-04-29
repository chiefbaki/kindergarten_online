import 'package:flutter/material.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';

class SearchChat extends SearchDelegate {
  @override
  TextStyle? get searchFieldStyle => const TextStyle(
      fontSize: 18, fontWeight: FontWeight.w600, color: AppColors.black);

  @override
  TextInputAction get textInputAction => TextInputAction.next;

  @override
  double? get leadingWidth => 20;
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(
            Icons.clear,
            size: 20,
          ))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_ios,
          size: 20,
          color: AppColors.black,
        ));
  }

  @override
  Widget buildResults(BuildContext context) {
    return const SizedBox();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const SizedBox();
  }
}
