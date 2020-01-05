var map;
var liveMapInterval = null;
var geojsonObject = null;
function intervalManager(flag, myfunction, time) {
   if(flag)
     window.liveMapInterval =  setInterval(myfunction, time);
   else
     clearInterval(window.liveMapInterval);
}

document.addEventListener("turbolinks:load", function() {
  if($("body").hasClass("maps")){
    window.map = new ol.Map({
      controls: ol.control.defaults({ attribution: false }),
      layers: [
        new ol.layer.Tile({
          source: new ol.source.OSM()
        })],
      target: 'map',
      view: new ol.View({
        center: [0,0],
        zoom: 17
      })
    });
  }
});
