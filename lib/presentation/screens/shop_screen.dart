import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_cubit/business_logic/cubit/shop_cubit.dart';
import 'package:shop_cubit/constants/mycolors.dart';
import 'package:shop_cubit/data/models/shop_model.dart';

class ShopScreen extends StatefulWidget {
  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  List<ShopModel>? allItems;
  @override
  void initState() {
    super.initState();
    allItems = BlocProvider.of<ShopCubit>(context).getAllItem();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shop Item',
          style: TextStyle(
            color: MyColor.myGrey,
          ),
        ),
        backgroundColor: MyColor.myYellow,
      ),
    );
  }
}
