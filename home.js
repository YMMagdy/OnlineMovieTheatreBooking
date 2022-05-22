//initializing variables
var movieid = [];
var title = [];
var descr = [];
var starring = [];
var youtubetrailerlink = [];
var rating = [];
var lang = [];
var runtime = [];
var releasedate = [];
var genre = [];
var imagetype = [];
var imagedata = [];
var av = [];
var show = 0;
var len;
var username;
var firstname;
var lastname;
k = 1;
//on loading the document(html files)
$(document).ready(function() {
    username = sessionStorage.getItem("username"); //session storage is used for storing variables
    //if loged in remove the sign up and login from the nav bar
    if ((username != null) && (typeof username !== 'undefined')) {
        firstname = sessionStorage.getItem("firstname");
        lastname = sessionStorage.getItem("lastname");
        //remove login and sign up
        document.getElementById("login1").removeChild(document.getElementById("n1"));
        //print the name in the nav bar instead
        document.getElementById("signup1").removeChild(document.getElementById("n2"));
        var name = document.createElement("a");
        name.setAttribute("class", "navBarBlockA");
        name.innerText = firstname + " " + lastname;
        name.style.float = "right";

        document.getElementById("signup1").appendChild(name);

    }
    //GET request
    $.ajax({
        url: 'movies.php',
        type: 'get',
        dataType: 'JSON', //response type
        success: function(response) { //on success of the php
            len = response.length;
            for (var i = 0; i < len; i++) {
                //split the response into arrays
                movieid.push(response[i].movieid);
                title[i] = response[i].title;
                descr[i] = response[i].descr;
                starring[i] = response[i].starring;
                youtubetrailerlink[i] = response[i].youtubetrailerlink;
                rating[i] = response[i].rating;
                lang[i] = response[i].lang;
                runtime[i] = response[i].runtime;
                releasedate[i] = response[i].releasedate;
                genre[i] = response[i].genre;
                imagetype[i] = response[i].imagetype;
                imagedata[i] = response[i].imagedata;
                av[i] = response[i].av;
                //if the movie is available now av=1, else it's comming soon
                if (av[i] == "0" && k != 4) {
                    document.getElementById("scr" + k).setAttribute("src", "img/" + i + ".jpg");
                    k++;
                } else if (av[i] == "1")
                    show++;
            }
            k = 0;

            for (i = 0; i < response.length; i++) {
                if (av[i] == "1" && k != show) { //loop on the available movies
                    if (i != response.length - 1)
                        var j = i + 1;
                    else j = 14;
                    //make the dev container for image element 
                    var div = document.createElement("div");
                    div.style.width = "100%";
                    div.style.height = "100%";
                    //put an id to the movie
                    div.setAttribute("id", [i + 1]);
                    //make the image element 
                    var im = document.createElement("img");
                    im.setAttribute("src", "img/" + j + ".jpg");
                    im.style.width = "100%";
                    im.style.height = "100%";
                    //set event handler for the dev
                    div.setAttribute("onclick", "x()");
                    //put the image in the dev
                    div.appendChild(im);
                    //put the dev in the home page
                    document.getElementById("availableMovies").appendChild(div);
                    k++;
                }
            }
        },
        error: function(response) { //on error
            console.log("It was a failure");
        }
    });
});
//the function for event handling to the movies
function x() {
    var i = event.currentTarget.getAttribute("id"); //get the movie that was pressed

    sessionStorage.setItem("movieid", i); //store the id in the session storage
    sessionStorage.setItem("movies", len);
    window.location.href = "description.html"; //go to this movie description
}