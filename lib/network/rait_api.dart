import 'dart:convert' as json;

import 'package:http/http.dart' as http;
import 'package:rait_app/models/subject_attendance.dart';
String baseUrl = "http://192.168.1.105:8080/";
class RaitApi
{
  http.Client client ;
  RaitApi()
  {
    client = http.Client();

  }
  Future<List<SubjectAttendance>> getStudentAttendance(String rollNo) async
  {
    String attendanceEndPoint = "attendance/";
    http.Response response = await http.get(baseUrl+attendanceEndPoint+rollNo);
    String jsonString = response.body;
    List<dynamic>  jsonData = json.jsonDecode(jsonString);
    List<SubjectAttendance> subjectAttendances = jsonData.map((json)=> SubjectAttendance.fromJson(json)).toList();

    return subjectAttendances;
  }
  Future<bool> checkLogin(String rollNo,String password) async
  {
    print(rollNo);
    print(password);
    String loginEndPoint = "login/";
    String url =baseUrl+loginEndPoint+rollNo+"/"+password;
    http.Response response = await http.get(url);
    print(url);
    String jsonResponse = response.body;
    print(jsonResponse);
    if(jsonResponse=="Authenticated")

    return true;
    return false;
  }
}