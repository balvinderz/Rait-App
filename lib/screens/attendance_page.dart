import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:rait_app/models/subject_attendance.dart';
import 'package:rait_app/network/rait_api.dart';

const kTextStyle = TextStyle(fontSize: 20.0, color: Colors.white);
const kBigTextStyle = TextStyle(fontSize: 25.0, color: Colors.black87);

class AttendanceScreen extends StatelessWidget {
  final RaitApi raitApi = RaitApi();
  final String rollNo;
  AttendanceScreen({this.rollNo});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.grey.shade100,
          appBar: AppBar(
            title: Text("Attendance"),
            backgroundColor: Colors.red.shade900,
          ),
          body: FutureBuilder(
              future: raitApi.getStudentAttendance(rollNo),
              builder:
                  (context, AsyncSnapshot<List<SubjectAttendance>> snapshot) {
                if (!snapshot.hasData)
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                List<SubjectAttendance> subjectAttendances = snapshot.data;
                List<AttendanceCard> attendanceCards = subjectAttendances
                    .map((subjectAttendance) => AttendanceCard(
                          subjectAttendance: subjectAttendance,
                        ))
                    .toList();
                double percentage = 0.0;
                for (SubjectAttendance subjectAttendance in subjectAttendances)
                  percentage += subjectAttendance.attendedLectures /
                      subjectAttendance.totalLectures;
                percentage /= subjectAttendances.length;
                String percentageString;
                if (percentage <= 0.1) {
                  percentageString =
                      (percentage * 100).toString().substring(0, 3) + "%";
                } else
                  percentageString =
                      (percentage * 100).toString().substring(0, 4) + "%";
                return ListView(
                  children: <Widget>[
                    Container(
                      height: 200.0,
                      width: double.infinity,
                      color: Colors.blue.shade600,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(percentageString, style: kTextStyle),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            "You need to attend more class",
                            style: kTextStyle,
                          ),
                        ],
                      ),
                    ),
                    ...attendanceCards
                  ],
                );
              })),
    );
  }
}

class AttendanceCard extends StatelessWidget {
  SubjectAttendance subjectAttendance;

  AttendanceCard({@required this.subjectAttendance});

  @override
  Widget build(BuildContext context) {
    double percentage =
        subjectAttendance.attendedLectures / subjectAttendance.totalLectures;
    // double percentage = 50/100;
    String percentageString;
    if (percentage <= 0.1) {
      percentageString = (percentage * 100).toString().substring(0, 3);
    } else
      percentageString = (percentage * 100).toString().substring(0, 4);

    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.white,
          ),
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  subjectAttendance.subjectName,
                  style: kBigTextStyle,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: CircularPercentIndicator(
                    radius: 80.0,
                    lineWidth: 5.0,
                    percent: percentage,
                    center: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(percentageString),
                        Padding(
                          padding: const EdgeInsets.only(top :10.0),
                          child: Text(
                              "${subjectAttendance.attendedLectures}/${subjectAttendance.totalLectures}"),
                        )
                      ],
                    ),
                    progressColor:
                        percentage < 0.75 ? Colors.red : Colors.green,
                  ),
                ),
              ),
            ),
          ])),
    );
  }
}
