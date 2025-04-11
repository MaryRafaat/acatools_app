import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/creat_account_student/creat_account_student_controller.dart';

class CreateAccountStudentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateAccountStudentController>(
      () => CreateAccountStudentController(),
    );
  }
}
