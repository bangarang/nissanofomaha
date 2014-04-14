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
      title:"Hello World!"
  });
}

function loadScript() {
  var script = document.createElement('script');
  script.type = 'text/javascript';
  script.src = 'https://maps.googleapis.com/maps/api/js?key=AIzaSyD_5fB5uxOVsa0GbQUvLRglI4QClaBoUbU&sensor=true&' +
      'callback=initialize';
  document.body.appendChild(script);
}