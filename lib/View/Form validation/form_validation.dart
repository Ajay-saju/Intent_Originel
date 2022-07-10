class FormValidations {
  String? password;

  String? emailFormValidation(value) {
    const regVal =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$";
    if (value == null) {
      return 'Enter Email ';
    } else if (!RegExp(regVal).hasMatch(value)) {
      return 'Enter valid email';
    } else {
      return null;
    }
  }

  String? nameValidation(value) {
    if (value == null) {
      return 'Enter name';
    } else if (value.length < 3) {
      return 'Enter full name';
    } else {
      return null;
    }
  }

  String? phoneNumberValidation(value) {
    // const regVal = r"/^\+?\d{1,4}?[-.\s]?\(?\d{1,3}?\)?[-.\s]?\d{1,4}[-.\s]?\d{1,4}[-.\s]?\d{1,9}$/";
    if (value == null) {
      return "Enter phone number";
    }else if (value.length <9){
      return 'Enter proper mobile number';
    }
    // } else if (!RegExp(regVal).hasMatch(value)) {
    //   return "Enter proper phome number";
    // } 
    else {
      return null;
    }
  }

   String? passwordValidation(value) {
    password = value;

    // const regVal = r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$";
    if (value == null) {
      return "Enter password";
    } 
    // else if (!RegExp(regVal).hasMatch(value)) {
    //   return "Minimum eight characters, at least one letter and one number";
    // } 
    else {
      return null;
    }
    
  }


   String? confirmPasswordValidation(value,String? valuecheack) {
    
    if (value == null) {
      return "Enter password";
    } else if (value == valuecheack) {
      return null;
    } else{return null;}
  }
}
