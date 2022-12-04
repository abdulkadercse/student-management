
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:url_launcher/url_launcher.dart';

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

  Future<void> _makeSms(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'sms',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
    print('Data');
  }

  //ph call
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.studentInformationModel.studentName.toString(),),centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
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
              const SizedBox(height: 10.0,),
              Text(widget.studentInformationModel.studentName.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
              // ListTile(
              //   leading: CircleAvatar(
              //     backgroundColor: Colors.grey,
              //     radius: 20.0,
              //     child: Icon(
              //       Icons.person,
              //       color: Color(0xff0601B4),
              //     ),
              //   ),
              //   title: Text("Student Name", style: TextStyle(color: Color(0xff181D27), fontWeight: FontWeight.bold),
              //   ),
              //   subtitle: Text(
              //     widget.studentInformationModel.studentName.toString(),
              //     style: const TextStyle(
              //       color: Color(0xff181D27),
              //       fontWeight: FontWeight.normal,
              //     ),
              //   ),
              //   trailing: Icon(
              //     Icons.arrow_forward_ios,
              //     color: Colors.grey,
              //   ),
              // ),
              ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 20.0,
                  child: Icon(
                    Icons.person,
                    color: Color(0xff0601B4),
                  ),
                ),
                title: Text("Student Name", style: TextStyle(color: Color(0xff181D27), fontWeight: FontWeight.bold,fontSize: 18),
                ),
                subtitle: Text(
                widget.studentInformationModel.studentName.toString(),
                  style: const TextStyle(
                    color: Color(0xff181D27),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0,right: 10.0),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 20.0,
                  child: Icon(
                    Icons.person,
                    color: Color(0xff0601B4),
                  ),
                ),
                title: const Text("Fathers Name", style: TextStyle(color: Color(0xff181D27), fontWeight: FontWeight.bold,fontSize: 18),
                ),
                subtitle: Text(
                  widget.studentInformationModel.fathersName.toString(),
                  style: const TextStyle(
                    color: Color(0xff181D27),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0,right: 10.0),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 20.0,
                  child: Icon(
                    Icons.person,
                    color: Color(0xff0601B4),
                  ),
                ),
                title: const Text("Mothers Name", style: TextStyle(color: Color(0xff181D27), fontWeight: FontWeight.bold,fontSize: 18),
                ),
                subtitle: Text(
                  widget.studentInformationModel.mothersName.toString(),
                  style: const TextStyle(
                    color: Color(0xff181D27),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0,right: 10.0),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 20.0,
                  child: Icon(
                    Icons.date_range,
                    color: Color(0xff0601B4),
                  ),
                ),
                title: const Text("Date Of Birth", style: TextStyle(color: Color(0xff181D27), fontWeight: FontWeight.bold,fontSize: 18),
                ),
                subtitle: Text(
                  widget.studentInformationModel.dateOfBirth.toString(),
                  style: const TextStyle(
                    color: Color(0xff181D27),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0,right: 10.0),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 20.0,
                  child: Icon(
                    Icons.person,
                    color: Color(0xff0601B4),
                  ),
                ),
                title: const Text("Roll Number", style: TextStyle(color: Color(0xff181D27), fontWeight: FontWeight.bold,fontSize: 18),
                ),
                subtitle: Text(
                  widget.studentInformationModel.rollNumber.toString(),
                  style: const TextStyle(
                    color: Color(0xff181D27),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0,right: 10.0),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 20.0,
                  child: Icon(
                    Icons.person,
                    color: Color(0xff0601B4),
                  ),
                ),
                title: const Text("Student Id", style: TextStyle(color: Color(0xff181D27), fontWeight: FontWeight.bold,fontSize: 18),
                ),
                subtitle: Text(
                  widget.studentInformationModel.studentId.toString(),
                  style: const TextStyle(
                    color: Color(0xff181D27),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0,right: 10.0),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 20.0,
                  child: Icon(
                    Icons.school,
                    color: Color(0xff0601B4),
                  ),
                ),
                title: const Text("Institute Name", style: TextStyle(color: Color(0xff181D27), fontWeight: FontWeight.bold,fontSize: 18),
                ),
                subtitle: Text(
                  widget.studentInformationModel.instituteName.toString(),
                  style: const TextStyle(
                    color: Color(0xff181D27),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0,right: 10.0),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 20.0,
                  child: Icon(
                    Icons.group,
                    color: Color(0xff0601B4),
                  ),
                ),
                title: const Text("Student Group", style: TextStyle(color: Color(0xff181D27), fontWeight: FontWeight.bold,fontSize: 18),
                ),
                subtitle: Text(
                  widget.studentInformationModel.studentGroup.toString(),
                  style: const TextStyle(
                    color: Color(0xff181D27),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0,right: 10.0),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 20.0,
                  child: Icon(
                    Icons.bloodtype,
                    color: Color(0xff0601B4),
                  ),
                ),
                title: const Text("Blood Group", style: TextStyle(color: Color(0xff181D27), fontWeight: FontWeight.bold,fontSize: 18),
                ),
                subtitle: Text(
                  widget.studentInformationModel.bloodGroup.toString(),
                  style: const TextStyle(
                    color: Color(0xff181D27),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0,right: 10.0),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 20.0,
                  child: Icon(
                    Icons.person,
                    color: Color(0xff0601B4),
                  ),
                ),
                title: const Text("Class Name", style: TextStyle(color: Color(0xff181D27), fontWeight: FontWeight.bold,fontSize: 18),
                ),
                subtitle: Text(
                  widget.studentInformationModel.className.toString(),
                  style: const TextStyle(
                    color: Color(0xff181D27),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0,right: 10.0),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 20.0,
                  child: Icon(
                    Icons.language,
                    color: Color(0xff0601B4),
                  ),
                ),
                title: const Text("Language", style: TextStyle(color: Color(0xff181D27), fontWeight: FontWeight.bold,fontSize: 18),
                ),
                subtitle: Text(
                  widget.studentInformationModel.language.toString(),
                  style: const TextStyle(
                    color: Color(0xff181D27),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0,right: 10.0),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              ListTile(
                leading:  GestureDetector(
                  onTap:  ()=>_makePhoneCall(widget.studentInformationModel.emergencyContactNumber.toString()),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 20.0,
                    child: Icon(
                      Icons.call,
                      color: Color(0xff0601B4),
                    ),
                  ),
                ),
                title: const Text("Contact Number", style: TextStyle(color: Color(0xff181D27), fontWeight: FontWeight.bold,fontSize: 18),
                ),
                subtitle: Text(
                  widget.studentInformationModel.emergencyContactNumber.toString(),
                  style: const TextStyle(
                    color: Color(0xff181D27),
                    fontWeight: FontWeight.normal,
                  ),
                ),
                trailing:  GestureDetector(
                  onTap:  ()=>_makeSms(widget.studentInformationModel.emergencyContactNumber.toString()),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 20.0,
                    child: Icon(
                      Icons.sms,
                      color: Color(0xff0601B4),
                    ),
                  ),
                ),

              ),

            ],
          ),
        ),
      ),
    );
  }
}