import 'package:eco_shop/core/config/settings/dio_settings/dio_settings.dart';
import 'package:eco_shop/features/home/domain/usecases/products_usecase.dart';
import 'package:eco_shop/internal/app.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final obj = ProductsUseCase(dio: DioSettings().dio);
  obj.getProducts();
  runApp(const MyApp());
}
