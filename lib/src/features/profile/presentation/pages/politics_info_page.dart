import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/generated/l10n.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_scaffold.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/navbar.dart';

const double _paddingUnit = 5;

@RoutePage()
class PoliticsPage extends StatelessWidget {
  const PoliticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: Navbar(title: S.of(context).privacyPolicy),
      body: Expanded(
        child:
            ListView(physics: const AlwaysScrollableScrollPhysics(), children: [
          Padding(
            padding: REdgeInsets.symmetric(
                horizontal: _paddingUnit * 3, vertical: _paddingUnit * 5),
            child: Column(
              children: [
                Text(
                  """1. Перед использованием программы, пожалуйста, ознакомьтесь с условиями нижеследующего Пользовательского соглашения (далее — «Соглашение»). Настоящее соглашение регулирует отношения между пользователем мобильного приложения (далее – «Пользователь») и ООО НПФ «KLOVER SAUNA» ОГРН 1127746674483 (далее – «Компания»), возникающие при использовании программного обеспечения KLOVER SAUNA, для смартфонов и иных портативных (мобильных) устройств (далее – «устройства»), предназначенного для технического доступа к мобильному приложению. .
              Любое использование (каждое скачивание, установка, запуск, работа с мобильным приложением, использование каких-либо его отдельных его функциональных возможностей, служб, услуг и т.п.) Пользователем Мобильного приложения KLOVER SAUNA (далее – «Приложение») означает полное и безоговорочное принятие Пользователем условий настоящего Соглашения, в редакции, действовавшей на момент использования мобильного приложения. Действующая редакция Соглашения доступна на сайте Компании по адресу http://klover.su/polzovatelskoe-soglashenie/
              3. ПРЕДОСТАВЛЕНИЕ ЛИЦЕНЗИИ:
              3.1. Мобильное приложение KLOVER SAUNA представляет собой программу для использования на мобильных устройствах.
              3.2. Данное Соглашение предназначено для пользователей приложения, установленного на устройствах, работающих под управлением мобильной операционной системы iOS и Android. Системные требования для корректной работы приложения: ОС iOS v. 12.0 и выше; Android v. 6.0 и выше. Компания """,
                  style: context.textTheme.titleSmall!
                      .copyWith(color: AppColors.black, height: 1.7),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
