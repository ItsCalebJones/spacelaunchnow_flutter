class Agency {
  final int id;
  final String name;
  final String abbrev;
  final String countryCode;
  final String description;
  final String administrator;
  final String foundingYear;
  final int successfulLaunches;
  final int failedLaunches;
  final int pendingLaunches;
  final String type;
  final String logoURL;
  final String imageURL;
  final String nationURL;
  final String infoURL;
  final String wikiURL;

//  final List<String> infoURLs;

  const Agency(
      {this.description,
      this.administrator,
      this.foundingYear,
      this.successfulLaunches,
      this.failedLaunches,
      this.pendingLaunches,
      this.imageURL,
      this.logoURL,
      this.nationURL,
      this.id,
      this.name,
      this.abbrev,
      this.countryCode,
      this.type,
      this.infoURL,
      this.wikiURL});

  factory Agency.fromJson(Map<String, dynamic> json) {
    if (json != null) {

      var logoURL = json['logo_url'];
      if (logoURL == null) {
        logoURL = "https:\/\/s3.amazonaws.com\/launchlibrary\/RocketImages\/placeholder_1920.png";
      }

      var imageURL = json['image_url'];
      if (imageURL == null) {
        imageURL = "https:\/\/s3.amazonaws.com\/launchlibrary\/RocketImages\/placeholder_1920.png";
      }

      var nationURL = json['nation_url'];
      if (nationURL == null) {
        nationURL = "https:\/\/s3.amazonaws.com\/launchlibrary\/RocketImages\/placeholder_1920.png";
      }

      return new Agency(
        id: json['id'],
        name: json['name'],
        abbrev: json['abbrev'],
        countryCode: json['country_code'],
        description: json['description'],
        administrator: json['administrator'],
        foundingYear: json['founding_year'],
        successfulLaunches: json['successful_launches'],
        failedLaunches: json['failed_launches'],
        pendingLaunches: json['pending_launches'],
        logoURL: logoURL,
        imageURL: imageURL,
        nationURL: nationURL,
        type: json['type'],
        infoURL: json['info_url'],
        wikiURL: json['wiki_url'],
      );
    }
    return null;
  }
}
