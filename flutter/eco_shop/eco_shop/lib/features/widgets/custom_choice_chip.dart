import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:eco_shop/features/home/presentation/blocs/products_bloc/products_bloc.dart';
import 'package:eco_shop/features/home/presentation/blocs/products_bloc/products_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomChoiceChip extends StatefulWidget {
  const CustomChoiceChip({
    super.key,
  });

  @override
  State<CustomChoiceChip> createState() => _CustomChoiceChipState();
}

class _CustomChoiceChipState extends State<CustomChoiceChip> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: choiceData.length,
        itemBuilder: ((context, index) {
          return ChoiceChip(
            side: const BorderSide(color: AppColors.ligthGrey),
            backgroundColor: Colors.white,
            selectedColor: AppColors.green,
            label: Text(
              choiceData[index],
              style: AppFonts.s16w500.copyWith(
                  color: selectedIndex == index
                      ? AppColors.white
                      : AppColors.ligthGrey),
            ),
            labelStyle: AppFonts.s16w500.copyWith(color: Colors.white),
            selected: selectedIndex == index,
            onSelected: (val) {
              selectedIndex = index;
              setState(() {});
              context.read<ProductsBloc>().add(
                  ProductsEvent.getProductsByCatByName(
                      byCategory: choiceData[index]));
            },
          );
        }),
        separatorBuilder: (context, index) => const SizedBox(
          width: 8,
        ),
      ),
    );
  }
}

final List<String> choiceData = [
  "all",
  "Fruits",
  "Dried_fruits",
  "Vegetables",
  "Milk_products",
  "Tea_Coffee",
  "Greenery"
];

int selectedIndex = 0;
