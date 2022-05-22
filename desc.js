//variables initialization
var k;
var movieid;
var title;
var descr;
var starring;
var youtubetrailerlink;
var rating;
var lang;
var runtime;
var releasedate;
var genre;
var imagetype;
var imagedata;
var av;
var username;
var len;
var loggedin;
//on loading the document(html files)
$(document).ready(function() {
    username = sessionStorage.getItem("username"); //session storage is used for storing variables
    //if loged in remove the sign up and login from the nav bar
    if ((username != null) && (typeof username !== 'undefined')) {
        firstname = sessionStorage.getItem("firstname");
        lastname = sessionStorage.getItem("lastname");
        //remove login and sign up
        document.getElementById("login1").removeChild(document.getElementById("n1"));
        document.getElementById("signup1").removeChild(document.getElementById("n2"));
        //print the name in the nav bar instead 
        var name = document.createElement("a");
        name.setAttribute("class", "navBarBlockA");
        name.innerText = firstname + " " + lastname;
        name.style.float = "right";
        document.getElementById("signup1").appendChild(name);
    }
    len = sessionStorage.getItem("movies");
    var idf = sessionStorage.getItem("movieid"); //get the movie that was pressed in the home page
    //GET request
    $.ajax({
        type: "GET",
        url: 'desc.php',
        dataType: 'JSON',
        data: { movieid: idf }, //pass movieid to the php
        async: false,
        cache: false,
        success: function(response) {
            //response returned from the php file
            movieid = response[0]["movieid"];
            title = response[0]["title"];
            descr = response[0]["descr"];
            starring = response[0]["starring"];
            youtubetrailerlink = response[0]["youtubetrailerlink"];
            rating = response[0]["rating"];
            lang = response[0]["lang"];
            runtime = response[0]["runtime"];
            releasedate = response[0]["releasedate"];
            genre = response[0]["genre"];
            imagetype = response[0]["imagetype"];
            imagedata = response[0]["imagedata"];
            av = response[0]["av"];

            var imgsrc = movieid;
            //put the responses we got in their places in the html
            document.getElementById("image").setAttribute("src", "img/" + imgsrc + ".jpg");
            document.getElementById("image").style.clear = "left";
            document.getElementById("description").innerText = descr;
            youtubetrailerlink = youtubetrailerlink.toString();
            document.getElementById("video").innerHTML = youtubetrailerlink;
            document.getElementById("title").innerText = title;
            document.getElementById("genre").innerText = genre;
            document.getElementById("lang").innerText = lang;
            document.getElementById("rating").innerText = rating + "/10";
            document.getElementById("releasedate").innerText = releasedate;
            document.getElementById("runtime").innerText = runtime;
            document.getElementById("starring").innerText = starring;


        },
        error: function(response) {
            console.log(response);
        }
    });
});
//add an event handler to the book button
var book = document.getElementById("book");
book.addEventListener("click", () => {
    if (username == null || typeof username === 'undefined') { //if the user is not logged in go to the login page
        window.location.href = "login.html";
    } else //if the user is logged in go to the reserve ticket page
        window.location.href = "booking.html";
});