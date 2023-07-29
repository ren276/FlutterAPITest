class GetApiData {
  List<String>? domains;
  String? stateProvince;
  String? country;
  String? alphaTwoCode;
  List<String>? webPages;
  String? name;

  GetApiData(
      {this.domains,
        this.stateProvince,
        this.country,
        this.alphaTwoCode,
        this.webPages,
        this.name});

  GetApiData.fromJson(Map<String, dynamic> json) {
    domains = json['domains'].cast<String>();
    stateProvince = json['state-province'];
    country = json['country'];
    alphaTwoCode = json['alpha_two_code'];
    webPages = json['web_pages'].cast<String>();
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['domains'] = this.domains;
    data['state-province'] = this.stateProvince;
    data['country'] = this.country;
    data['alpha_two_code'] = this.alphaTwoCode;
    data['web_pages'] = this.webPages;
    data['name'] = this.name;
    return data;
  }
}
