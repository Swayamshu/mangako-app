class CardData {
  String title;
  String imageUrl;
  CardData({
    required this.title,
    required this.imageUrl
  });
}

class BannerData extends CardData {
  String description;
  BannerData({
    required super.title,
    required super.imageUrl,
    required this.description
  });
}