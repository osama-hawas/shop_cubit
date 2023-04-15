class ShopModel{
  late final int id;
  late final String title;
  late final num  price;
  late final String description;
  late final String category;
  late final String image;
  late final Rating rating;
  
  ShopModel.fromJson(Map<String, dynamic> json){
    id = json['id'];
    title = json['title'];
    price = json['price'];
    description = json['description'];
    category = json['category'];
    image = json['image'];
    rating = Rating.fromJson(json['rating']);
  }

  
}

class Rating {
  Rating({
    required this.rate,
    required this.count,
  });
  late final num rate;
  late final num count;
  
  Rating.fromJson(Map<String, dynamic> json){
    rate = json['rate'];
    count = json['count'];
  }
}