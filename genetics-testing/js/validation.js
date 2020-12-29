// name validations 
function FirstNameValidation() {
    var firstName = document.getElementById('f_name').value;
    var firstNameErorr = document.getElementById('f_nameError');
    let letters  = /^[A-Za-z]+$/;
    let nameCount = firstName.length;
    //console.log(`first name = ${firstName}`);
    
    if(!firstName.match(letters))
      { firstNameErorr.innerText = " **invalid Input "; }
    else if (nameCount < 4) 
      {firstNameErorr.innerText = " **Name length should be greater than 3 "; }
    else if (nameCount > 20) 
      {  firstNameErorr.innerText = " **Name length should be less than 20 "; }
    else
    {  firstNameErorr.innerText = " "; }

       
}
function LastNameValidation(){
    var lastName = document.getElementById('l_name').value;
    var lastNameErorr = document.getElementById('l_nameError');
    console.log(` last name = ${lastName}`);

    let letters  = /^[A-Za-z]+$/;
    let nameCount = lastName.length;
    //console.log(`first name = ${lastName}`);
    
    if(!lastName.match(letters))
      { lastNameErorr.innerText = " **invalid Input "; }
    else if (nameCount < 4) 
      {lastNameErorr.innerText = " **Name length should be greater than 3 "; }
    else if (nameCount > 20) 
      {  lastNameErorr.innerText = " **Name length should be less than 20 "; }
    else
    {  lastNameErorr.innerText = " "; }
}

 