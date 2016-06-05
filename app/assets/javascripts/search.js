
$(document).ready( function() {
  setTimeout(function(){getLatitudeLongitude(showResult, gon.location.toString())},10);
});

function initMap() {
       var map = new google.maps.Map(document.getElementById('map'), {
         zoom: 13,
         center: {lat: -34.397, lng: 150.644}
       });
}

function getLatitudeLongitude(callback, address) {
   // If adress is not supplied, use default value 'Ferrol, Galicia, Spain'
   address = address || 'Ferrol, Galicia, Spain';
   // Initialize the Geocoder
   geocoder = new google.maps.Geocoder();
   if (geocoder) {
       geocoder.geocode({
           'address': address
       }, function (results, status) {
           if (status == google.maps.GeocoderStatus.OK) {
               callback(results[0]);
           }
        });
    }
}
//Show the map close to the current selected area
function showResult(result) {
    var map = new google.maps.Map(document.getElementById('map'));
    map.setZoom(13);
    map.setCenter(result.geometry.location);
    map.setMapTypeId(google.maps.MapTypeId.ROADMAP);
}




// $(document).ready(function(){
//   var locations = [
//         [51.481383, -3.114967, 'UK', 'Cardiff'],
//         [52.362393, 4.893379, 'NL', 'Amsterdam'],
//         [48.852314, 2.350089, 'FR', 'Paris'],
//         [40.18884, -3.716812, 'SP', 'Madrid'],
//         [53.800651, -4.064941, 'IT', 'Rome'],
//         [42.041134, 1.889648, 'SP', 'Costa Brava'],
//         [37.014581, -7.933888, 'PT', 'Algarve'],
//         [28.358776, -14.05426, 'PT', 'Fuerteventura'],
//         [29.046854, -13.589973, 'SP', 'Lanzarote']
//     ];
//
//   var map = new google.maps.Map(document.getElementById('map'), {
//     zoom: 3,
//     center: new google.maps.LatLng(40.92, 1.25),
//     mapTypeId: google.maps.MapTypeId.ROADMAP
//   });
//
//   var infowindow = new google.maps.InfoWindow();
//
//   var marker, i;
//
//   for (i = 0; i < locations.length; i++) {
//     marker = new google.maps.Marker({
//       position: new google.maps.LatLng(locations[i][0], locations[i][1]),
//       map: map
//     });
//
//     google.maps.event.addListener(marker, 'click', (function(marker, i) {
//       return function() {
//         infowindow.setContent(locations[i][3]);
//         infowindow.open(map, marker);
//       }
//     })(marker, i));
//   }
// });
// $(document).ready(function(){
//   var dogWalkerMap = Gmaps.build('Google');
//     dogWalkerMap.buildMap({ internal: {id: 'multi_markers'}}, function(){
//       var markers = dogWalkerMap.addMarkers([
//         { lat: 43, lng: 3.5},
//         { lat: 45, lng: 4},
//         { lat: 47, lng: 3.5},
//         { lat: 49, lng: 4},
//         { lat: 57.7, lng: 12}
//       ]);
//       dogWalkerMap.bounds.extendWith(markers);
//       //handler.fitMapToBounds();
//       dogWalkerMap.map.centerOn({
//         lat: 57.708870,
//         lng: 11.974560
//       });
//       var overlay = new google.maps.OverlayView();
//       overlay.draw = function () {
//         this.getPanes().markerLayer.id = 'markers';
//       };
//       overlay.setMap(dogWalkerMap.getMap());
//
//       dogWalkerMap.getMap().setZoom(13);
//       });
// });
