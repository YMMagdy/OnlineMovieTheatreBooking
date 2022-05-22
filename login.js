function loginHandler() {
    //get the username and password from the html
    var username = document.getElementById("email-login").value;
    var password = document.getElementById("password-login").value;
    if ((username.length != 0) && (password.length != 0)) { //check inputs
        //GET request
        $.ajax({
            url: "login.php",
            type: "GET",
            data: { //send username and password
                username: username,
                password: password
            },
            datatype: 'JSON',

            success: function(res) { //on success of login in php
                var res = JSON.parse(res);

                if (res.valid === true) { //check response
                    console.log("Succesfully logged in");
                    alert(res["username"]);
                    //store the values in the sessionStorage to be used later
                    sessionStorage.setItem("username", res["username"]);
                    sessionStorage.setItem("firstname", res["firstname"]);
                    sessionStorage.setItem("lastname", res["lastname"]);
                    window.location.href = "home.html";
                } else {
                    alert("username/password incorrect");
                }

            },
            failure: function(res) {
                console.log("Failed to login");


            }
        });


    } else { //if there's no input
        alert("Fields could not be null");
    }

}

function signupHandler() { //if sign up button is pressed, redirect to sign up page
    window.location.href = "signup.html";
}