import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kindergarten_online/src/features/services/presentation/blocs/product_bloc/product_bloc.dart';
import 'package:kindergarten_online/src/features/services/presentation/widgets/category_card.dart';
import 'package:kindergarten_online/src/features/widgets/custom_progress_indicator.dart';

const double _paddingUnit = 5;

class ProductItem extends StatefulWidget {
  final String id;
  const ProductItem({super.key, required this.id});

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  void initState() {
    super.initState();
    context.read<ProductBloc>().add(ProductEvent.getProduct(query: widget.id));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(builder: (context, state) {
      return state.when(
          initial: () => const SizedBox(),
          loading: () => const CustomProgressIndicator(),
          success: (e) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: _paddingUnit * 4, vertical: _paddingUnit * 5),
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
