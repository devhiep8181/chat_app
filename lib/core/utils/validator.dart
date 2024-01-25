final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

const String kEmailNullError = "Please enter your email";
const String kInvalidEmailError = "Please enter valid email";
const String kPassNullError = "Please enter your password";
const String kInvalidPassError = "Password must be at least 8 characters";
const String kNameNullError = "Please enter your name";

String? nameValidator(String? value) {
  if (value!.isEmpty) {
    return kNameNullError;
  } return null;
}

String? passwordValidator(String? value) {
  if (value!.isEmpty) {
    return kPassNullError;
  } else if (value.length < 8) {
    return kInvalidPassError;
  }
  return null;
}

String? emailValidator(String? value) {
  if (value!.isEmpty) {
    return kEmailNullError;
  } else if (!emailValidatorRegExp.hasMatch(value)) {
    return kInvalidEmailError;
  }
  return null;
}
