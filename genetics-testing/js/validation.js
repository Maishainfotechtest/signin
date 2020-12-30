// name validations
// --first name validation 
function FirstNameValidation() {
  var firstName = document.getElementById('f_name').value;
  var firstNameErorr = document.getElementById('f_nameError');
  let letters = /^[A-Za-z]+$/;
  let nameCount = firstName.length;
  if (nameCount == "") {
    firstNameErorr.innerText = "**Please enter first name";
  }

  else {
    if (!firstName.match(letters)) { firstNameErorr.innerText = " **invalid Input "; return false; }
    else if (nameCount < 4) { firstNameErorr.innerText = " **Name length should be greater than 3 "; return false;}
    else if (nameCount > 20) { firstNameErorr.innerText = " **Name length should be less than 20 "; return false; }
    else { firstNameErorr.innerText = " ";  }
  }
}
// --Last name validation
function LastNameValidation() {
  var lastName = document.getElementById('l_name').value;
  var lastNameErorr = document.getElementById('l_nameError');
  let letters = /^[A-Za-z]+$/;
  let nameCount = lastName.length;

  if (nameCount == "") { lastNameErorr.innerText = "**Please Enter last Name" }
  else if (!lastName.match(letters)) { lastNameErorr.innerText = " **invalid Input "; return false;}
  else if (nameCount < 4) { lastNameErorr.innerText = " **Name length should be greater than 3 "; return false;}
  else if (nameCount > 20) { lastNameErorr.innerText = " **Name length should be less than 20 "; return false; }

  else { lastNameErorr.innerText = " "; }
}

//Email Validation 
function emailVal() {
  var email = document.getElementById('email').value;
  var emailError = document.getElementById('emailError');
  var emailCount = email.length;
  var validmail = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
  if (emailCount == "") {
    emailError.innerText = "**Please Enter your Email ID";
  }
  else {
    if (emailCount < 5) {
      emailError.innerText = "Email Length should be Greater then 5"
    }
    else if (!email.match(validmail)) { emailError.innerText = " Invalid email " }
    else if (emailCount > 40) { emailError.innerText = "Email Length should be less then 40" }
   
    else { emailError.innerText = " ";  }
  }


}
//country Validation
function counVal() {
  var conCode = document.getElementById('country').value;
  var conError = document.getElementById('countryError');
  var conCount = conCode.length;

  if (conCount == "") {
    conError.innerText = "**select country"
  } else {
    conError.innerText = " ";
  }
}
//Phone Number Validation
function phoneVal() {
  var phVal = document.getElementById('phone').value;
  var phError = document.getElementById('phoneError');
  var phCount = phVal.length;
  let letters = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
  if (phCount == " ") { phError.innerText = "**please enter your phone number"; }
  else {
    if (!phVal.match(letters)) { phError.innerText = "**invalid contact number";return false; }

    else { phError.innerText = " ";  }
  }
}

//date validation 
function dateVal() {

  var dateControl = document.querySelector('input[type="date"]').value;
  var dateError = document.getElementById('dateError');


  if (dateControl === " ") {
    dateError.innerText = "**enter date value"
  } else {
    dateError.innerText = " ";
  }
}

//password Validation
function passVal() {
  var pass = document.getElementById('password').value;
  var passError = document.getElementById('passError');
  var passcount = pass.length;
  // To check a password between 7 to 15 characters which contain at least one numeric digit and a special character
  var pasVal = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,15}$/;


  if (passcount == " ") {
    passError.innerText = "**please enter your password";
  } else {
    if (!pass.match(pasVal)) { passError.innerText = "password between 7 to 15 characters which contain at least one numeric digit and a special character"; return false; }
    else { passError.innerText = " "; }

  }

}

//confirm password 
function cpassVal() {
  var cpass = document.getElementById('con_password').value;
  var pass = document.getElementById('password').value;
  var cpassError = document.getElementById('con_passError');

  var passcount = pass.length;
  var cpassCount = cpass.length;

  if (cpassCount == " ") {
    cpassError.innerText = "**please enter confirm password";
  } else {
    if (cpass !== pass) {
      cpassError.innerText = "**password and confirm password are not matching"; return false;;
    }
    else { cpassError.innerText = " "; }

  }



}
// calling functions 
function validations() {

  FirstNameValidation();
  LastNameValidation();
  emailVal();
  counVal();
  phoneVal();
  dateVal();
  passVal();
  cpassVal();


}