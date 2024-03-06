class SemesterList {
  String? semesterId;
  int? semesterYear;
  String? semesterName;

  SemesterList({
    this.semesterId,
    this.semesterYear,
    this.semesterName,
  });

  SemesterList.fromJson(Map<String, dynamic> json) {
    semesterId = json['semesterId'];
    semesterYear = json['semesterYear'];
    semesterName = json['semesterName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['semesterId'] = semesterId;
    data['semesterYear'] = semesterYear;
    data['semesterName'] = semesterName;
    return data;
  }
}
