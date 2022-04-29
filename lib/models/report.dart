
import 'package:crime_reporter/models/user.dart';

class Report{
   String title;
   String type;
   String location;
   DateTime time;
   String description;
   String imageURL ;
   String reportTo ;
   User reporter ;

   Report({
      required this.title,
      required this.type,
      required this.location,
      required this.time,
      required this.description,
      required this.imageURL,
      required this.reportTo,
      required this.reporter,

   });

    factory Report.fromJson(Map<String,dynamic> json) =>
      Report(
        title: json['title'],
        type: json['type'],
        location: json['location'],
        time: json['time'],
        imageURL: json['imageURL'],
        description: json['description'],
        reportTo: json['report_to'],
        reporter: json['reporter'],

      );
}