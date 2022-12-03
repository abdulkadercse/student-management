
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../Model/students_model.dart';
import '../Repositories/student_repo.dart';

final studentProvider = FutureProvider<List<StudentInformationModel>>((ref) => StudentRepo().getAllStudents());
