
class SubjectAttendance {
  String subjectName;

  int attendedLectures, totalLectures;

  SubjectAttendance(
      this.subjectName,this.attendedLectures,this.totalLectures);

  SubjectAttendance.fromJson(dynamic json)
      : subjectName = json['subject_name'],
        attendedLectures = int.parse(json['attended_lectures'].toString()),
        totalLectures = int.parse(json['total_lectures'].toString());



}