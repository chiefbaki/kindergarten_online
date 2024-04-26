import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kindergarten_online/features/services/presentation/cubits/product_cubit/product_cubit.dart';
import 'package:kindergarten_online/features/services/presentation/widgets/category_card.dart';
import 'package:kindergarten_online/features/widgets/custom_progress_indicator.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(builder: (context, state) {
      return state.when(
          initial: () => const SizedBox(),
          loading: () => const CustomProgressIndicator(),
          success: (e) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.77,
                child: GridView.builder(
                    itemCount: e.count,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 30,
                            crossAxisSpacing: 30,
                            childAspectRatio: 1),
                    itemBuilder: (_, index) => CategoryCard(
                          textStyle: Theme.of(context).textTheme,
                          entity: e.results![index],
                        )),
              ),
            );
          },
          failure: (error) => Text(error));
    });
  }
}
