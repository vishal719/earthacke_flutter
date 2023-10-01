import 'package:intl/intl.dart';

class Response {
  String? type;
  Metadata? metadata;
  List<Features>? features;
  List<double>? bbox;

  Response({
    this.type,
    this.metadata,
    this.features,
    this.bbox,
  });

  factory Response.fromJson(Map<String, dynamic> json) {
    return Response(
      type: json['type'],
      metadata: json['metadata'] != null ? Metadata.fromJson(json['metadata']) : null,
      features: json['features'] != null ? List<Features>.from(json['features'].map((x) => Features.fromJson(x))) : null,
      bbox: json['bbox'] != null ? List<double>.from(json['bbox'].map((x) => x.toDouble())) : null,
    );
  }
}

class Features {
  String? type;
  Properties? properties;
  Geometry? geometry;
  String? id;

  Features({
    this.type,
    this.properties,
    this.geometry,
    this.id,
  });

  factory Features.fromJson(Map<String, dynamic> json) {
    return Features(
      type: json['type'],
      properties: json['properties'] != null ? Properties.fromJson(json['properties']) : null,
      geometry: json['geometry'] != null ? Geometry.fromJson(json['geometry']) : null,
      id: json['id'],
    );
  }
}

class Geometry {
  String? type;
  List<double>? coordinates;

  Geometry({
    this.type,
    this.coordinates,
  });

  factory Geometry.fromJson(Map<String, dynamic> json) {
    return Geometry(
      type: json['type'],
      coordinates: List<double>.from(json['coordinates'].map((x) => x.toDouble())),
    );
  }
}

class Properties {
  double? mag;
  String? place;
  int? time;
  int? updated;
  dynamic tz;
  String? url;
  String? detail;
  int? felt;
  double? cdi;
  double? mmi;
  String? alert;
  String? status;
  int? tsunami;
  int? sig;
  String? net;
  String? code;
  String? ids;
  String? sources;
  String? types;
  int? nst;
  double? dmin;
  double? rms;
  int? gap;
  String? magType;
  String? type;
  String? title;

  Properties({
    this.mag,
    this.place,
    this.time,
    this.updated,
    this.tz,
    this.url,
    this.detail,
    this.felt,
    this.cdi,
    this.mmi,
    this.alert,
    this.status,
    this.tsunami,
    this.sig,
    this.net,
    this.code,
    this.ids,
    this.sources,
    this.types,
    this.nst,
    this.dmin,
    this.rms,
    this.gap,
    this.magType,
    this.type,
    this.title,
  });

  // Create a method to format the date and time
  String formattedDate() {
    if (time == null) {
      return '';
    }

    final dateTime = DateTime.fromMillisecondsSinceEpoch(time!);
    final formatter = DateFormat('EEE, MMM d');
    return formatter.format(dateTime);
  }

  String formattedTime() {
    if (time == null) {
      return '';
    }

    final dateTime = DateTime.fromMillisecondsSinceEpoch(time!);
    final formatter = DateFormat('h:mm a');
    return formatter.format(dateTime);
  }

  factory Properties.fromJson(Map<String, dynamic> json) {
    return Properties(
      mag: (json['mag'] as num?)?.toDouble(),
      place: json['place'],
      time: json['time'],
      updated: json['updated'],
      tz: json['tz'],
      url: json['url'],
      detail: json['detail'],
      felt: json['felt'],
      cdi: (json['cdi'] as num?)?.toDouble(),
      mmi: (json['mmi'] as num?)?.toDouble(),
      alert: json['alert'],
      status: json['status'],
      tsunami: json['tsunami'],
      sig: json['sig'],
      net: json['net'],
      code: json['code'],
      ids: json['ids'],
      sources: json['sources'],
      types: json['types'],
      nst: json['nst'],
      dmin: (json['dmin'] as num?)?.toDouble(),
      rms: (json['rms'] as num?)?.toDouble(),
      gap: json['gap'],
      magType: json['magType'],
      type: json['type'],
      title: json['title'],
    );
  }
}

class Metadata {
  int? generated;
  String? url;
  String? title;
  int? status;
  String? api;
  int? limit;
  int? offset;
  int? count;

  Metadata({
    this.generated,
    this.url,
    this.title,
    this.status,
    this.api,
    this.limit,
    this.offset,
    this.count,
  });

  factory Metadata.fromJson(Map<String, dynamic> json) {
    return Metadata(
      generated: json['generated'],
      url: json['url'],
      title: json['title'],
      status: json['status'],
      api: json['api'],
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}
