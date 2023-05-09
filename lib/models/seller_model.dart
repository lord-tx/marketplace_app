class SellerModel{
  String storeName;
  String storeLogoLink;
  String? lastActive;
  double? feedbackPercent;

  SellerModel({
    required this.storeName,
    required this.storeLogoLink,
    this.lastActive,
    this.feedbackPercent
  });
}