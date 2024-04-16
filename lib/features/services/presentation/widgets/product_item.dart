import 'package:flutter/material.dart';
import 'package:kindergarten_online/features/services/data/products_model.dart';
import 'package:kindergarten_online/features/services/presentation/widgets/favorite_btn.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.builder(
            itemCount: ProductsModel.items.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                childAspectRatio: 1),
            itemBuilder: (_, index) => Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ProductsModel.items[index].img))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: FavoriteBtn(
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                )));
  }
}
