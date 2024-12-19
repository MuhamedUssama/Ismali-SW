class Moshaf {
  int? id;
  String? name;
  String? server;
  int? surahTotal;
  int? moshafType;
  String? surahList;

  Moshaf(
      {this.id,
      this.name,
      this.server,
      this.surahTotal,
      this.moshafType,
      this.surahList});

  Moshaf.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    server = json['server'];
    surahTotal = json['surah_total'];
    moshafType = json['moshaf_type'];
    surahList = json['surah_list'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['server'] = server;
    data['surah_total'] = surahTotal;
    data['moshaf_type'] = moshafType;
    data['surah_list'] = surahList;
    return data;
  }
}
