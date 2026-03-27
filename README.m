<!DOCTYPE html>
<!-- saved from url=(0060)file:///C:/Users/sbcsk/OneDrive/Documents/modulus/index.html -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Local Event Finder</title>

<style>

body{
font-family: Arial;
text-align:center;

/* Background Image */
background-image: url("104.jpg");
background-size: cover;
background-position: center;
background-repeat: no-repeat;
}

/* Form Box */

.form-box{
background: rgba(255,255,255,0.9);
padding:20px;
border-radius:10px;
width:300px;
margin:auto;
margin-top:20px;
}

/* Event Cards */

.event-card{
width:320px;
background:white;
border-radius:10px;
box-shadow:0 0 10px rgba(0,0,0,0.2);
margin:20px auto;
padding:10px;
}

.event-card img{
width:100%;
border-radius:10px;
}

button{
background:#ff2e63;
color:white;
border:none;
padding:10px;
border-radius:5px;
cursor:pointer;
}

input{
padding:8px;
margin:5px;
width:90%;
}

</style>

<script>

function addEvent(){

let name = document.getElementById("name").value;
let date = document.getElementById("date").value;
let location = document.getElementById("location").value;
let maplink = document.getElementById("maplink").value;
let poster = document.getElementById("poster").files[0];

let reader = new FileReader();

reader.onload = function(e){

let container = document.getElementById("events");

let card = document.createElement("div");
card.className="event-card";

card.innerHTML = `
<img src="${e.target.result}">
<h3>${name}</h3>
<p>Date: ${date}</p>
<p>Location: ${location}</p>

<a href="${maplink}" target="_blank">
<button>Open Map</button>
</a>
`;

container.appendChild(card);

}

reader.readAsDataURL(poster);

}

</script>

</head>

<body>

<h1 style="color:white;">Local Event Finder</h1>

<div class="form-box">

<h2>Add Event</h2>

Event Name<br>
<input type="text" id="name"><br>

Date<br>
<input type="date" id="date"><br>

Location<br>
<input type="text" id="location"><br>

Map Link<br>
<input type="text" id="maplink" placeholder="Paste Google Maps link"><br>

Upload Poster<br>
<input type="file" id="poster"><br><br>

<button onclick="addEvent()">Add Event</button>

</div>

<h2 style="color:white;">Upcoming Events</h2>

<div id="events"><div class="event-card">
<img src="data:image">
<h3>jbjh</h3>
<p>Date: 2026-03-26</p>
<p>Location: qwjkhvkj</p>

<a href="https://maps.app.goo.gl/YRj3MvDmXfKcURuD6" target="_blank">
<button>Open Map</button>
</a>
</div></div>


</body></html>
