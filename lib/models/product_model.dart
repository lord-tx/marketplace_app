import 'package:marketplace_app/models/review_model.dart';
import 'package:marketplace_app/models/seller_model.dart';

class Product {
  String name;
  String category; // TODO: Classify this into an enum
  String description;
  String price;
  double rating;
  int numberOfReviews;
  bool likedByCurrentUser;
  List<String> altImages;
  String displayImage;

  /// Extras : To be compressed into separate model
  String? brand;
  String? productColor;
  String? productCategory;
  String? productMaterial;
  String? condition;
  String? productWeight;
  String? deliveryFrom;
  String? shippingType;
  String? arrivalTime;
  SellerModel? sellerInformation;
  ReviewModel? reviewsRatings;

  Product({
    required this.name,
    required this.price,
    required this.displayImage,
    this.description = "No item description",
    this.rating = 0.0,
    this.numberOfReviews = 0,
    this.likedByCurrentUser = false,
    this.category = "Uncategorized",
    this.altImages = const <String>[],
  });
}
