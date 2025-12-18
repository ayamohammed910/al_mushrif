class GiftModel {
  final String title;
  final String pay;
  final String purchases;
  final String days;
  final bool subscriber;

  const GiftModel({
    required this.title,
    required this.pay,
    required this.purchases,
    this.days="5",
    this.subscriber = false,
  });
}
