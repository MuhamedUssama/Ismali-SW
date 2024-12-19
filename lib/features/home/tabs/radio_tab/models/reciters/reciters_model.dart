import 'moshaf_model.dart';

class Reciters {
  int? id;
  String? name;
  String? letter;
  String? date;
  List<Moshaf>? moshaf;

  Reciters({this.id, this.name, this.letter, this.date, this.moshaf});

  Reciters.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    letter = json['letter'];
    date = json['date'];
    if (json['moshaf'] != null) {
      moshaf = <Moshaf>[];
      json['moshaf'].forEach((v) {
        moshaf!.add(Moshaf.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['letter'] = letter;
    data['date'] = date;
    if (moshaf != null) {
      data['moshaf'] = moshaf!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
