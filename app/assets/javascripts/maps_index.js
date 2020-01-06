document.addEventListener("turbolinks:load", function() {
// add layers to the map
  if($("body").hasClass("maps") && $("body").hasClass("index") && typeof(window.geojsonObject) != "undefined"){
    var g = (new ol.format.GeoJSON()).readFeatures(window.geojsonObject);
    var vectorSource = new ol.source.Vector({
        features: g
    });
    var vectorLayer = new ol.layer.Vector({
      source: vectorSource,
      style: styleFunction
    });
    window.map.addLayer(vectorLayer);
    window.map.getView().setZoom(17);
    window.map.getView().setCenter(window.geojsonObject.features[0].geometry.coordinates);
  }
});
