import 'package:flutter/material.dart';
import 'package:kindergarten_online/features/services/presentation/widgets/category_card.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.77,
        child: GridView.builder(
            itemCount: 9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 30,
                crossAxisSpacing: 30,
                childAspectRatio: 1),
            itemBuilder: (_, index) =>
                CategoryCard(textStyle: Theme.of(context).textTheme)),
      ),
    );
  }
}
