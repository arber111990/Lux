
      function initMap() {
        // Create a map object and specify the DOM element for display.
        var map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: 52.5206, lng: 13.4098},
          scrollwheel: false,
          zoom: 8
        });
      }
    src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCzER7O10ZOUp7FloJzMe2r8X1GIQhgt7Q&callback=initMap"

