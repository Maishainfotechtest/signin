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


    else {
      firstNameErorr.innerText = " ";
      firstnameSucess.innerText = "✔";
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



  else {
    lastNameErorr.innerText = " ";
    btn.removeAttribute('disabled', 'disabled');
    lastnamesuccess.innerText = " ✔";
    document.getElementById("submitRejis").style.cursor = "pointer";
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

  }
  else if (conCount < 2) {
    conError.innerText = "**invalid input"
    consuccess.innerText = " ";
    btn.setAttribute('disabled', 'disabled');
    document.getElementById("submitRejis").style.cursor = "not-allowed";

  }

  else {
    conError.innerText = " ";
    btn.removeAttribute('disabled', 'disabled');
    document.getElementById("submitRejis").style.cursor = "pointer";
    consuccess.innerText = " ✔";
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
      phsuccess.innerText = " ✔";
    }
  }
}
//date validation 
function dateVal() {

  var dateControl = document.querySelector('input[type="date"]').value;
  var dateError = document.getElementById('dateError');
  var date = document.getElementById('date').value;
  var datesuccess = document.getElementById('dateSuccess');


  if (document.getElementById('date').oninput) {
    document.getElementById('label').style.display = "none";
    datesuccess.innerText = "✔";
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
      passCorr.innerText = "  ✔";
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
      cpassCorrect.innerText = " ✔ ";
    }

  }



}
// calling functions 

//check box validation
function stop(event) {
  event.preventDefault();
}

//validation for reset password 
//password Validation
function resetpassVal() {
  var btn = document.getElementById('submit');
  var pass = document.getElementById('reset_password').value;
  var passError = document.getElementById('reset_passError');
  var passCorr = document.getElementById('reset_passcorrect');
  var passcount = pass.length;
  var cpass = document.getElementById('confirm_password');
  // To check a password between 7 to 15 characters which contain at least one numeric digit and a special character
  var pasVal = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,15}$/;


  if (passcount == " ") {
    passError.innerText = "**please enter your password";
    passCorr.innerText = " ";
    cpass.setAttribute('disabled', 'disabled');
    btn.setAttribute('disabled', 'disabled');

  } else {
    if (!pass.match(pasVal)) {
      passError.innerText = "password between 7 to 15 characters which contain at least one numeric digit and a special character";
      btn.setAttribute('disabled', 'disabled');
      cpass.setAttribute('disabled', 'disabled');
      document.getElementById("submit").style.cursor = "not-allowed";
      passCorr.innerText = " ";
    }
    else {
      passError.innerText = " ";
      btn.removeAttribute('disabled', 'disabled');
      cpass.removeAttribute('disabled', 'disabled');
      document.getElementById("submit").style.cursor = "pointer";
      passCorr.innerText = "✔";
    }

  }

}
//confirm password 
function resetcpassVal() {
  var btn = document.getElementById('submit');
  var cpass = document.getElementById('confirm_password').value;
  var pass = document.getElementById('reset_password').value;
  var cpassCorrect = document.getElementById('reset_Cpasscorrect');
  var cpassError = document.getElementById('reset_CpassError');

  var passcount = pass.length;
  var cpassCount = cpass.length;

  if (cpassCount == " ") {
    cpassError.innerText = "**please enter confirm password";
    cpassCorrect.innerText = " ";
  } else {
    if (cpass !== pass) {
      cpassError.innerText = "**password and confirm password are not matching";
      document.getElementById("submit").style.cursor = "not-allowed";
      btn.setAttribute('disabled', 'disabled');
      cpassCorrect.innerText = " ";
    }

    else {
      cpassError.innerText = " ";
      btn.removeAttribute('disabled', 'disabled');
      document.getElementById("submit").style.cursor = "pointer";
      cpassCorrect.innerText = " ✔ ";
    }

  }



}

//validation for profile name 
var updatebtn = document.getElementById('updateProf');
function ProfileFirstNameValidation() {

  var ProfilefirstName = document.getElementById('prof_f_name').value;
  var ProfilefirstnameSucess = document.getElementById('prof_f_name_sucess');
  var ProfilefirstNameErorr = document.getElementById('prof_f_nameError');
  let letters = /^[A-Za-z]+$/;
  let nameCount = ProfilefirstName.length;
  if (nameCount == "") {
    ProfilefirstNameErorr.innerText = "**Please enter first name";
    ProfilefirstnameSucess.innerText = " ";

  }

  else {
    if (!ProfilefirstName.match(letters)) {
      ProfilefirstNameErorr.innerText = " **invalid Input ";
      updatebtn.setAttribute('disabled', 'disabled');
      updatebtn.style.background = "#63b5de";
      document.getElementById("updateProf").style.cursor = "not-allowed";
      ProfilefirstnameSucess.innerText = " ";
    }


    else {
      ProfilefirstNameErorr.innerText = " ";
      ProfilefirstnameSucess.innerText = "✔";
      updatebtn.style.cursor = "pointer";
      updatebtn.style.background = "#0b73a6";
      updatebtn.removeAttribute('disabled', 'disabled');
      document.getElementById("updateProf").style.cursor = "pointer";
    }
  }
}
// --Last name validation
function ProfileLastNameValidation() {
  var ProfileLastName = document.getElementById('Profile_l_name').value;
  var ProfileLastNamesuccess = document.getElementById('Profile_l_name_sucess');
  var ProfileLastNameErorr = document.getElementById('Profile_l_nameError');
  let letters = /^[A-Za-z]+$/;
  let nameCount = ProfileLastName.length;

  if (nameCount == "") {
    ProfileLastNameErorr.innerText = "**Please Enter last Name";
    ProfileLastNamesuccess.innerText = " ";

  }
  else if (!ProfileLastName.match(letters)) {
    ProfileLastNameErorr.innerText = " **invalid Input ";
    document.getElementById("updateProf").style.cursor = "not-allowed";
    updatebtn.setAttribute('disabled', 'disabled');
    updatebtn.style.background = "#63b5de";
    ProfileLastNamesuccess.innerText = " ";

  }
  else {
    ProfileLastNameErorr.innerText = " ";
    updatebtn.removeAttribute('disabled', 'disabled');
    updatebtn.style.background = "#0b73a6";
    ProfileLastNamesuccess.innerText = "✔";
    document.getElementById("updateProf").style.cursor = "pointer";
  }
}
//Phone Number Validation
function ProfilephoneVal() {
  var ProfilephVal = document.getElementById('Profliephone').value;
  var ProfilephError = document.getElementById('ProfilephoneError');
  var phsuccess = document.getElementById('Profilephonesuccess');
  var phCount = ProfilephVal.length;
  let letters = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
  if (phCount == " ") {
    ProfilephError.innerText = "**please enter your phone number";
    phsuccess.innerText = " ";
    updatebtn.setAttribute('disabled', 'disabled');
  }
  else {
    if (!ProfilephVal.match(letters)) {
      ProfilephError.innerText = "**invalid contact number";
      phsuccess.innerText = " ";
      updatebtn.style.background = "#63b5de";
      document.getElementById("updateProf").style.cursor = "not-allowed";
      updatebtn.setAttribute('disabled', 'disabled');
    }

    else {
      ProfilephError.innerText = " ";
      updatebtn.style.background = "#0b73a6";
      updatebtn.removeAttribute('disabled', 'disabled');
      document.getElementById("updateProf").style.cursor = "pointer";
      phsuccess.innerText = "✔";
    }
  }
}








