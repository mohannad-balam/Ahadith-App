import 'dart:convert';

class Hadith {
  String key;
  String hadithName;
  String hadithDiscription;
  String hadithExplanation;
  String hadithTr;
  String audio;
  Hadith({
    this.key,
    this.hadithName,
    this.hadithDiscription,
    this.hadithExplanation,
    this.hadithTr,
    this.audio,
  });

  Map<String, dynamic> toMap() {
    return {
      'key': key,
      'hadithName': hadithName,
      'hadithDiscription': hadithDiscription,
      'hadithExplanation': hadithExplanation,
      'hadithTr': hadithTr,
      'audio': audio,
    };
  }

  factory Hadith.fromMap(Map<String, dynamic> map) {
    return Hadith(
      key: map['key'] ?? '',
      hadithName: map['hadithName'] ?? '',
      hadithDiscription: map['hadithDiscription'] ?? '',
      hadithExplanation: map['hadithExplanation'] ?? '',
      hadithTr: map['hadithTr'] ?? '',
      audio: map['audio'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Hadith.fromJson(String source) => Hadith.fromMap(json.decode(source));
}
