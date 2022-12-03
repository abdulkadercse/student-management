
import 'package:flutter/material.dart';

import '../Model/students_model.dart';


class StudentInfo extends StatefulWidget {
  const StudentInfo({Key? key, required this.studentInformationModel}) : super(key: key);
  final StudentInformationModel studentInformationModel;


  @override
  State<StudentInfo> createState() => _StudentInfoState();
}

class _StudentInfoState extends State<StudentInfo> {
  String pictureUrl =
      'https://firebasestorage.googleapis.com/v0/b/maanpos.appspot.com/o/Customer%20Picture%2FNo_Image_Available.jpeg?alt=media&token=3de0d45e-0e4a-4a7b-b115-9d6722d5031f';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(widget.studentInformationModel.studentName.toString()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.blue,
                backgroundImage: NetworkImage(widget.studentInformationModel.pictureUrl ?? pictureUrl),
              ),
            ),

          ],
        ),
      ),
    );
  }
}