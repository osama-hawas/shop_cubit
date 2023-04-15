import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_cubit/business_logic/cubit/shop_cubit.dart';
import 'package:shop_cubit/data/repository/shop_repository.dart';
import 'package:shop_cubit/data/web_services/shop_web_services.dart';
import 'package:shop_cubit/presentation/screens/shop_screen.dart';
import 'package:shop_cubit/presentation/screens/item_details_screen.dart';

import 'constants/strings.dart';

class AppRouter {
  ShopRepository? shopRepository;
  ShopCubit? shopCubit;
  AppRouter() {
    shopRepository = ShopRepository(ShopWebServices());
    shopCubit = ShopCubit(shopRepository!);
  }
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case shopScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext ccontext) => shopCubit!,
            child: ShopScreen(),
          ),
        );

      case itemDetailsScreen:
        return MaterialPageRoute(builder: (_) => ItemDetails());
    }
  }
}
