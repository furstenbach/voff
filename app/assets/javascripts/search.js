$(document).ready(function(){
  var dogWalkerMap = Gmaps.build('Google');
    dogWalkerMap.buildMap({ internal: {id: 'multi_markers'}}, function(){
      var markers = dogWalkerMap.addMarkers([
        { lat: 43, lng: 3.5},
        { lat: 45, lng: 4},
        { lat: 47, lng: 3.5},
        { lat: 49, lng: 4},
        { lat: 57.7, lng: 12}
      ]);
      dogWalkerMap.bounds.extendWith(markers);
      //handler.fitMapToBounds();
      dogWalkerMap.map.centerOn({
        lat: 57.708870,
        lng: 11.974560
      });
      var overlay = new google.maps.OverlayView();
      overlay.draw = function () {
        this.getPanes().markerLayer.id = 'markers';
      };
      overlay.setMap(dogWalkerMap.getMap());

      dogWalkerMap.getMap().setZoom(13);
      });
});
