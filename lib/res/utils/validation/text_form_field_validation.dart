extension TextFormFieldValidation on String {
  bool isValidEmail() {
    var regex = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return regex.hasMatch(this);
  }

  bool isValidPassword() {
    var regex = RegExp(r'^.{8,}$');

    return regex.hasMatch(this);
  }

  bool isValidName() {
    var regex = RegExp(r"^[A-Za-z]+(?: [A-Za-z]+)*$");

    return regex.hasMatch(this);
  }

  bool isValidMobileNumber() {
    var regex = RegExp(r"^[0-9]{10}$");

    return regex.hasMatch(this);
  }

  bool isValidLinkedinProfile() {
    var regex = RegExp(
        r"^https:\/\/(www\.)?linkedin\.com\/in\/[a-zA-Z0-9-]{3,100}\/?$");

    return regex.hasMatch(this);
  }

  bool isValidAge() {
    var regex = RegExp(r"^(?:[1-9][0-9]?|1[01][0-9]|120)$");

    return regex.hasMatch(this);
  }
}
