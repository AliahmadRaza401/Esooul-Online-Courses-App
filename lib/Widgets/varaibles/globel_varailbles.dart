import 'package:form_field_validator/form_field_validator.dart';

final emailValidator = MultiValidator([
  RequiredValidator(errorText: "email is required"),
  EmailValidator(errorText: "enter a valid email"),
]);

final passwordValidator = MultiValidator([
  RequiredValidator(errorText: 'password is required'),
  MinLengthValidator(10, errorText: 'password must be at least 10 digits long'),
  PatternValidator(r'(?=.*?[#?!@$%^&*-])(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])',
      errorText: 'Enter one Upper and Special case letter')
]);
