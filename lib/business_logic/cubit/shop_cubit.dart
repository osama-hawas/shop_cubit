import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shop_cubit/data/models/shop_model.dart';
import 'package:shop_cubit/data/repository/shop_repository.dart';

part 'shop_state.dart';

class ShopCubit extends Cubit<ShopState> {
  final ShopRepository shopRepository;
  late List<ShopModel> items;
  ShopCubit(this.shopRepository) : super(ShopInitial());
  List<ShopModel> getAllItem() {
    shopRepository.getAllItem().then((items) {
      emit(ItemLoaded(items));
      this.items = items;
    });
    return items;
  }
}
