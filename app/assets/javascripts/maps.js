var map = null;
var geojsonObject = null;


document.addEventListener("turbolinks:load", function() {
  if($("body").hasClass("maps") || $("body").hasClass("welcome")){
    window.map = new ol.Map({
      controls: ol.control.defaults({ attribution: false }),
      layers: [
        new ol.layer.Tile({
          source: new ol.source.OSM()
        })],
      target: 'map',
      view: new ol.View({
        center: [0,0],
        zoom: 1
      })
    });
  }
});
