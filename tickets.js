//variables initialization
var id = 0;
var buttons = document.getElementById("buttons");
var children = buttons.childNodes;
var seatstobereserved = []; //array to conatin all the seats the user chose
var seat=[];
var movieid = sessionStorage.getItem("movieid");
var username = sessionStorage.getItem("username");
//on loading the document(html files)
$(document).ready(function() {
    //GET request to get all the pre-reserved tickets to disable reserving them again
    $.ajax({
        url: 'gettickets.php',
        type: "GET",


        data: { movieid: movieid }, //pass movieid to the php
        dataType: 'JSON',
        success: function(response) { //on success
            len = response.length;
            if (typeof len == 'undefined') {} else { //do nothing if there's no pre-reserved tickets
                for (var i = 0; i < len; i++) {
                    seat.push(response[i].seat);
                }
                for (i = 0; i < response.length; i++) {
                    var seat_btn = document.getElementById(seat[i]);
                    seat_btn.disabled = true; //disable all pre-reserved tickets
                    seat_btn.style.backgroundColor = "#501f3a";
                }
            }
        },
        error: function(response) {
            console.log(response);
        }
    });
});

console.log(children);
for (var i = 0; i < children.length; i++) { //put the event handler for all buttons
    if (i % 2 == 0) continue; //because di contain buttons and texts
    var item = children[i];
    console.log(item);
    item.setAttribute("onclick", "clicky()");

}

//function for the event handling
function clicky() {
    id = event.currentTarget.getAttribute("id"); //get button id
    if (seatstobereserved.indexOf(id) == -1) { //if it was unclicked then clicked
        seatstobereserved.push(id); //push the button in the array for reservation
        event.currentTarget.style.backgroundColor = "#501f3a";
    } else { //if it was clicked then unclicked
        idremove = seatstobereserved.indexOf(id); //remove from the reservation array
        seatstobereserved.splice(idremove, 1);
        event.currentTarget.style.backgroundColor = "#cb2d6f"; //return back its original color
    }
    console.log(seatstobereserved);
}

sb = document.getElementById("submit");
sb.addEventListener("click", submit);
//function to be done when the submit button is clicked to store all clicked buttons in the database
function submit() {
    seatstobereserved = JSON.stringify(seatstobereserved);
    console.log(username);
    //post request 
    $.ajax({
        url: 'tickets.php',
        type: "POST",
        data: { email: username, movieid: movieid, seatstobereserved: seatstobereserved }, //pass information about the tickets
        success: function(response) {
            alert("Booking Successful");
            window.location.href = "home.html"; //on success redirect to the home page
        },
        error: function(response) {
            console.log(response.error);
        }
    });


}