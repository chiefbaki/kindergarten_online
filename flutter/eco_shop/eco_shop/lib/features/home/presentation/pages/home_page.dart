import 'package:auto_route/auto_route.dart';
import 'package:eco_shop/core/config/routes/app_router.gr.dart';
import 'package:eco_shop/core/config/settings/shared_prefences/shared_repository_impl.dart';
import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:eco_shop/core/utils/constants/app_consts.dart';
import 'package:eco_shop/features/home/data/models/home_products_dto.dart';
import 'package:eco_shop/features/home/presentation/blocs/products_bloc/products_bloc.dart';
import 'package:eco_shop/features/home/presentation/blocs/products_bloc/products_event.dart';
import 'package:eco_shop/features/home/presentation/blocs/products_bloc/products_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String token = "";

  void getToken() async {
    final SharedPrefsImpl prefs = SharedPrefsImpl();
    token = await prefs.getValue(key: AppConsts.accessToken);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getToken();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
            child: Column(
              children: [
                Text(
                  "Эко Маркет",
                  style: AppFonts.s24w700.copyWith(color: AppColors.fontColor),
                ),
                const SizedBox(
                  height: 18,
                ),
                BlocListener<ProductsBloc, ProductsState>(
                  listener: (context, state) {
                    state.when(
                        inital: () => print("initial"),
                        loading: () => print("loading"),
                        success: (success) {
                          context.router
                              .push(ProductsRoute(productList: success));
                          // success.forEach((e) {
                          //   context.router.push(ProductsRoute(
                          //       name: e.name,
                          //       id: e.id,
                          //       category: e.category,
                          //       quantity: e.quantity,
                          //       price: e.price,
                          //       img: e.imageUrl));
                          // });
                        },
                        failure: (error) => print(error));
                  },
                  child: Expanded(
                      child: GridView.builder(
                          itemCount: HomeProductsDto.getProducts.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 11,
                          ),
                          itemBuilder: (_, index) {
                            return InkWell(
                              onTap: () {
                                context.read<ProductsBloc>().add(
                                    const ProductsEvent
                                        .getProductsByCatByName());
                                print(token);
                              },
                              child: Image.asset(
                                  width: 166,
                                  height: 180,
                                  HomeProductsDto.getProducts[index].img ?? ""),
                            );
                          })),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
