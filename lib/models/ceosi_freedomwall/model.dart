class Mood {
  String amount;
  String category;
  String date;
  String description;

  Mood(
      {required this.amount,
      required this.category,
      required this.date,
      required this.description});

  factory Mood.fromJson(Map<String, dynamic> json) {
    return Mood(
      amount: json['creator'],
      category: json['mood'],
      date: json['title'],
      description: json['description'],
    );
  }
}
