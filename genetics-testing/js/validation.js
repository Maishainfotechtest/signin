// name validations
// --first name validation 
var btn = document.getElementById('submitRejis');
function FirstNameValidation() {

  var firstName = document.getElementById('f_name').value;
  var firstnameSucess = document.getElementById('f_name_sucess');
  var firstNameErorr = document.getElementById('f_nameError');
  let letters = /^[A-Za-z]+$/;
  let nameCount = firstName.length;
  if (nameCount == "") {
    firstNameErorr.innerText = "**Please enter first name";
    firstnameSucess.innerText = " ";

  }

  else {
    if (!firstName.match(letters)) {
      firstNameErorr.innerText = " **invalid Input ";
      btn.setAttribute('disabled', 'disabled');
      document.getElementById("submitRejis").style.cursor = "not-allowed";
      firstnameSucess.innerText = " ";
    }
    else if (nameCount < 4) {
      firstNameErorr.innerText = " **Name length should be greater than 3 ";
      btn.setAttribute('disabled', 'disabled');
      btn.style.cursor = "not-allowed";
      document.getElementById("submitRejis").style.cursor = "not-allowed";
      firstnameSucess.innerText = " ";
    }
    else if (nameCount > 20) {
      firstNameErorr.innerText = " **Name length should be less than 20 ";
      btn.setAttribute('disabled', 'disabled');
      btn.style.cursor = "not-allowed";
      document.getElementById("submitRejis").style.cursor = "not-allowed";
      firstnameSucess.innerText = " ";
    }
    else {
      firstNameErorr.innerText = " ";
      firstnameSucess.innerText = "correct ✔";
      btn.style.cursor = "pointer";
      btn.removeAttribute('disabled', 'disabled');
      document.getElementById("submitRejis").style.cursor = "pointer";
    }
  }
}
// --Last name validation
function LastNameValidation() {
  var lastName = document.getElementById('l_name').value;
  var lastnamesuccess = document.getElementById('l_name_sucess');
  var lastNameErorr = document.getElementById('l_nameError');
  let letters = /^[A-Za-z]+$/;
  let nameCount = lastName.length;

  if (nameCount == "") {
    lastNameErorr.innerText = "**Please Enter last Name";
    lastnamesuccess.innerText = " ";

  }
  else if (!lastName.match(letters)) {
    lastNameErorr.innerText = " **invalid Input ";
    document.getElementById("submitRejis").style.cursor = "not-allowed";
    btn.setAttribute('disabled', 'disabled');
    lastnamesuccess.innerText = " ";

  }
  else if (nameCount < 4) {
    lastNameErorr.innerText = " **Name length should be greater than 3 ";
    btn.setAttribute('disabled', 'disabled');
    document.getElementById("submitRejis").style.cursor = "not-allowed";
    lastnamesuccess.innerText = " ";

  }
  else if (nameCount > 20) {
    lastNameErorr.innerText = " **Name length should be less than 20 ";
    btn.setAttribute('disabled', 'disabled');
    document.getElementById("submitRejis").style.cursor = "not-allowed";
    lastnamesuccess.innerText = " ";

  }

  else {
    lastNameErorr.innerText = " ";
    btn.removeAttribute('disabled', 'disabled');
    lastnamesuccess.innerText = "correct ✔";
    document.getElementById("submitRejis").style.cursor = "pointer";
  }
}
//Email Validation 
function emailVal() {
  var email = document.getElementById('email').value;
  var emailError = document.getElementById('emailError');
  var emailSuccess = document.getElementById('emailsucess');
  var emailCount = email.length;
  var validmail = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
  if (emailCount == "") {
    emailError.innerText = "**Please Enter your Email ID";
    emailSuccess.innerText = " ";
  }
  else {
    if (emailCount < 5) {
      emailError.innerText = "Email Length should be Greater then 5";
      document.getElementById("submitRejis").style.cursor = "not-allowed";
      btn.setAttribute('disabled', 'disabled');
      emailSuccess.innerText = " ";
    }
    else if (!email.match(validmail)) {
      emailError.innerText = " Invalid email ";
      document.getElementById("submitRejis").style.cursor = "not-allowed";
      emailSuccess.innerText = " ";
      btn.setAttribute('disabled', 'disabled');
    }
    else if (emailCount > 40) {
      emailError.innerText = "Email Length should be less then 40";
      emailSuccess.innerText = " ";
      document.getElementById("submitRejis").style.cursor = "not-allowed";
      btn.setAttribute('disabled', 'disabled');
    }
    else {
      emailError.innerText = " ";
      emailSuccess.innerText = "correct ✔";
      btn.removeAttribute('disabled', 'disabled');
      document.getElementById("submitRejis").style.cursor = " pointer";
    }
  }


}
//country Validation
function counVal() {
  var conCode = document.getElementById('country').value;
  var consuccess = document.getElementById('countrySuccess');
  var conError = document.getElementById('countryError');
  var conCount = conCode.length;

  if (conCount == "") {
    conError.innerText = "**select country"
    consuccess.innerText = " ";
    btn.setAttribute('disabled', 'disabled');
    document.getElementById("submitRejis").style.cursor = "not-allowed";

  } else {
    conError.innerText = " ";
    btn.removeAttribute('disabled', 'disabled');
    document.getElementById("submitRejis").style.cursor = "pointer";
    consuccess.innerText = "correct ✔";
  }
}
//Phone Number Validation
function phoneVal() {
  var phVal = document.getElementById('phone').value;
  var phError = document.getElementById('phoneError');
  var phsuccess = document.getElementById('phonesuccess');
  var phCount = phVal.length;
  let letters = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
  if (phCount == " ") {
    phError.innerText = "**please enter your phone number";
    phsuccess.innerText = " ";
   btn.setAttribute('disabled', 'disabled');
  }
  else {
    if (!phVal.match(letters)) {
      phError.innerText = "**invalid contact number";
      phsuccess.innerText = " ";
      document.getElementById("submitRejis").style.cursor = "not-allowed";
      btn.setAttribute('disabled', 'disabled');
    }

    else {
      phError.innerText = " ";
      btn.removeAttribute('disabled', 'disabled');
      document.getElementById("submitRejis").style.cursor = "pointer";
      phsuccess.innerText = "correct ✔";
    }
  }
}
//date validation 
function dateVal() {

  var dateControl = document.querySelector('input[type="date"]').value;
  var dateError = document.getElementById('dateError');
  var date = document.getElementById('date').value;
   var datesuccess = document.getElementById('dateSuccess');

  if (date == "") {
    dateError.innerText = "**enter date value";
    datesuccess.innerText = "  ";
  } else {
    dateError.innerText = " ";
    datesuccess.innerText = "correct✔";
  }
}
//password Validation
function passVal() {
  var pass = document.getElementById('password').value;
  var passError = document.getElementById('passError');
  var passCorr = document.getElementById('passcorrect');
  var passcount = pass.length;
  // To check a password between 7 to 15 characters which contain at least one numeric digit and a special character
  var pasVal = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,15}$/;


  if (passcount == " ") {
    passError.innerText = "**please enter your password";
    passCorr.innerText = " ";
    
    btn.setAttribute('disabled', 'disabled');

  } else {
    if (!pass.match(pasVal)) {
      passError.innerText = "password between 7 to 15 characters which contain at least one numeric digit and a special character";
      btn.setAttribute('disabled', 'disabled');
      document.getElementById("submitRejis").style.cursor = "not-allowed";
      passCorr.innerText = " ";
    }
    else {
      passError.innerText = " ";
      btn.removeAttribute('disabled', 'disabled');
      document.getElementById("submitRejis").style.cursor = "pointer";
      passCorr.innerText = " correct ✔";
    }

  }

}
//confirm password 
function cpassVal() {
  var cpass = document.getElementById('con_password').value;
  var pass = document.getElementById('password').value;
  var cpassCorrect = document.getElementById('con_passSuccess');
  var cpassError = document.getElementById('con_passError');

  var passcount = pass.length;
  var cpassCount = cpass.length;

  if (cpassCount == " ") {
    cpassError.innerText = "**please enter confirm password";
  } else {
    if (cpass !== pass) {
      cpassError.innerText = "**password and confirm password are not matching";
      document.getElementById("submitRejis").style.cursor = "not-allowed";
      btn.setAttribute('disabled', 'disabled');
      cpassCorrect.innerText = " ";
    }
    else {
      cpassError.innerText = " ";
      btn.removeAttribute('disabled', 'disabled');
      document.getElementById("submitRejis").style.cursor = "pointer";
      cpassCorrect.innerText = "correct ✔ ";
    }

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
//check box validation
function stop(event) {
  event.preventDefault();
}



