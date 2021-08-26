import 'package:form_field_validator/form_field_validator.dart';

final emailValidator = MultiValidator([
  RequiredValidator(errorText: "email is required"),
  EmailValidator(errorText: "enter a valid email"),
]);

final passwordValidator = MultiValidator([
  RequiredValidator(errorText: 'password is required'),
  MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
  PatternValidator(r'(?=.*?[#?!@$%^&*-])(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])',
      errorText:
          'passwords must have at least one\nspecial character and Upper case letter')
]);
