import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../Repositories/signup_repo.dart';

final signUpProvider = ChangeNotifierProvider((ref) => SignUpRepo());
