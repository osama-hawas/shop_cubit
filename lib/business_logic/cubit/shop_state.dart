part of 'shop_cubit.dart';

@immutable
abstract class ShopState {}

class ShopInitial extends ShopState {}

class ItemLoaded extends ShopState {
  final List<ShopModel> itemModel;

  ItemLoaded(this.itemModel);
}
