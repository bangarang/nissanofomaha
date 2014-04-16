function initialize() {
  // var mark = new google.maps.LatLng(41.2636173,-96.185);
  var mark = new google.maps.LatLng(41.264830, -96.188350);
  var mapOptions = {
    zoom: 15,
    center: mark
  };

  var map = new google.maps.Map(document.getElementById('map-canvas'),
      mapOptions);

  // To add the marker to the map, use the 'map' property
  var marker = new google.maps.Marker({
      position: mark,
      map: map,
      title:"Nissan of Omaha"
  });

    var contentString = '<div id="content">'+
      '<a href="https://www.google.com/maps/dir///@41.2648229,-96.2226255,13z/data=!4m8!4m7!1m0!1m5!1m1!1s0x0:0x6f391bb2b64a5b08!2m2!1d-96.188293!2d41.264828" target="_blank">Get Directions</a>'+
      '</div>';

  var infowindow = new google.maps.InfoWindow({
      content: contentString
  });

  google.maps.event.addListener(marker, 'click', function() {
    infowindow.open(map,marker);
  });
}

function loadScript() {
  var script = document.createElement('script');
  script.type = 'text/javascript';
  script.src = 'https://maps.googleapis.com/maps/api/js?key=AIzaSyD_5fB5uxOVsa0GbQUvLRglI4QClaBoUbU&sensor=true&' +
      'callback=initialize';
  document.body.appendChild(script);
}