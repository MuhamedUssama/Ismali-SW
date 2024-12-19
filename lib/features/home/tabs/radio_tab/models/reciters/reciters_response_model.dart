import 'reciters_model.dart';

class RecitersResponse {
  List<Reciters>? reciters;

  RecitersResponse({this.reciters});

  RecitersResponse.fromJson(Map<String, dynamic> json) {
    if (json['reciters'] != null) {
      reciters = <Reciters>[];
      json['reciters'].forEach((v) {
        reciters!.add(Reciters.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (reciters != null) {
      data['reciters'] = reciters!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
