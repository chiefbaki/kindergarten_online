import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:kindergarten_online/generated/l10n.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/navbar.dart';
import 'package:kindergarten_online/src/features/services/presentation/blocs/category_bloc/category_bloc.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_scaffold.dart';
import 'package:kindergarten_online/src/features/services/presentation/widgets/services_tabs.dart';

const double _paddingUnit = 5;

@RoutePage()
class ServicesPage extends StatefulWidget {
  const ServicesPage({super.key});

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  @override
  void initState() {
    super.initState();
    context.read<CategoryBloc>().add(const CategoryEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return CustomScaffold(
      appBar: Navbar(
        textStyle: textStyle,
        title: S.of(context).productsAndServices,
      ),
      body: Column(children: [
        Gap(
          _paddingUnit * 5.h,
        ),
        ServicesTabs(textStyle: textStyle),
      ]),
    );
  }
}
