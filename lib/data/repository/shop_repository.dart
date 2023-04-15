import 'package:shop_cubit/data/models/shop_model.dart';
import 'package:shop_cubit/data/web_services/shop_web_services.dart';

class ShopRepository {
  final ShopWebServices shopWebServices;
  ShopRepository(this.shopWebServices);
  Future<List<ShopModel>> getAllItem() async {
    final items = await shopWebServices.getAllItem();
    return items.map((item) => ShopModel.fromJson(item)).toList();
  }

  // final ShopWebServices shopWebServices;
  // ShopRepository(this.shopWebServices);
  // Future<List<ShopModel>> getAllProduct() async {
  //   final items = await shopWebServices.getAllProduct();

  //   return items.map((item) => ShopModel.fromJson(item)).toList();
  // }
}
