class ReviewModel{
  double fiveStars;
  double fourStars;
  double threeStars;
  double twoStars;
  double oneStars;
  String totalReviews;
  List<Reviewer> topReviews;


  ReviewModel({
    this.fiveStars = 0.0,
    this.fourStars = 0.0,
    this.threeStars = 0.0,
    this.twoStars = 0.0,
    this.oneStars = 0.0,
    this.totalReviews = "",
    this.topReviews = const []
  });
}

class Reviewer{
  String reviewerName;
  String reviewerImage;
  List<String> reviewerTags;
  String review;
  double rating;

  Reviewer({
    required this.reviewerName,
    required this.reviewerImage,
    this.reviewerTags = const [],
    this.review = "Empty Review",
    this.rating = 0.0,
  });
}