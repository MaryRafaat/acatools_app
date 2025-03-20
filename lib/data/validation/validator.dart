import 'package:email_validator/email_validator.dart';

class Validator {
  static validateEmail(emailController) {
    return EmailValidator.validate(emailController.text)
        ? null
        : 'Invalid email';
  }
}
