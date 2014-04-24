$(function(){

 function initialize() {
        var mapOptions = {
          center: new google.maps.LatLng(42.2542586, -83.8873974),
          zoom: 10
        };
        var map = new google.maps.Map(document.getElementById("map-canvas"),
            mapOptions);
      }
      google.maps.event.addDomListener(window, 'load', initialize);

});