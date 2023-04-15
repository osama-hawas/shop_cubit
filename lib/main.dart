import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_cubit/app_router.dart';

void main() {
  runApp(ShopApp(
    appRouter: AppRouter(),
  ));
}

class ShopApp extends StatelessWidget {
  final AppRouter appRouter;
  ShopApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
