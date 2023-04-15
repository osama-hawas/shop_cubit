import 'package:dio/dio.dart';
import 'package:shop_cubit/constants/strings.dart';
import 'package:shop_cubit/data/models/shop_model.dart';

class ShopWebServices {
   Dio? dio;
  ShopWebServices() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: Duration(seconds: 20),
      receiveTimeout: Duration(seconds: 20),
    );
    dio = Dio(options);
  }

    Future<List<dynamic>> getAllItem() async {
      try {
        Response response = await dio!.get('products');
        print(response.data.toString());
        return response.data;
      } catch (e) {
        print(e.toString());
        return [];
      }
    }
  

  // Future<List<dynamic>> getAllProduct() async {
  //   Dio dio = Dio();
  //   Response response = await dio.get(baseUrl);
  //   if (response.statusCode == 200) {
  //     print(response.data.toString());
  //     return response.data;
  //   } else {
  //     return [];
  //   }
  // }
}
