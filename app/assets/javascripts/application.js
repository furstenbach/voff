// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require_tree .
//= require gmaps/google

//= require bootstrap-datepicker

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
