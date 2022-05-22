//variables initialization
var username;
var password;
var confirm_password;
var cc;
var ccPin;
var firstName;
var lastName;

function signupHandler() {
    //get inputs from the form
    firstName = document.getElementById("firstNameInp").value;
    lastName = document.getElementById("lastNameInp").value;
    username = document.getElementById("emailInp").value;
    password = document.getElementById("passInp").value;
    confirm_password = document.getElementById("passInpConf").value;
    cc = document.getElementById("ccInp").value;
    ccPin = document.getElementById("ccInpPin").value;

    if (validateEmail(username) && validatePassword(password, confirm_password) && validateCreditCard(cc, ccPin)) { //check validity of username, password and credit card number
        //POST request 
        $.ajax({
            url: "signup.php",
            type: "POST",
            data: { //pass data to the php
                firstName: firstName,
                lastName: lastName,
                username: username,
                password: password,
                creditCardNo: cc,
                creditCardPin: ccPin
            },
            datatype: JSON,

            success: function(res) { //on success
                res = JSON.parse(res);
                if (res == true) { //if signed up, go to login
                    window.location.href = "login.html"
                } else { //incase of failure 
                    alert("Username is already used");
                }
            },
            failure: function() { //on failure 
                document.getElementsById("Failure").value = "Failed to Sign Up";

            }
        });
    }
}

function validateEmail(email) { //validate the email formate
    const re = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(String(email).toLowerCase());
}

function validatePassword(password, confirmPassword) {

    if ((password == confirmPassword) && (password.length >= 8)) { //validate the password and that the length is more than 8 characters
        return true;
    } else {
        alert("Password not matching");
        return false;
    }
}

function validateCreditCard(creditCard, credictCardPin) {
    if (credictCardPin.length == 4 && creditCard.length == 16) { //validate credit card no. length and pin length

        return true;
    } else {
        alert("Credit Card data is incorrect");
        return false;
    }
}