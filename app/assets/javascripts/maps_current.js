document.addEventListener("turbolinks:load", function() {
  if($("body").hasClass("maps") && $("body").hasClass("current") && window.geojsonObject != null) {
  var g = (new ol.format.GeoJSON()).readFeatures(window.geojsonObject);
  var vectorSource = new ol.source.Vector({
      features: g
  });
  var vectorLayer = new ol.layer.Vector({
    source: vectorSource,
    style: styleFunction
  });

  window.map.addLayer(vectorLayer);
  window.map.getView().setCenter(window.geojsonObject.features[0].geometry.coordinates);

  var fetchdata = function (){
    console.log("running");
     $.ajax({
      url: 'current.json',
      type: 'get',
      success: function(response){
       // Perform operation on the return value
       console.log(response);
       window.geojsonObject.features[0].geometry.coordinates = ol.proj.fromLonLat([
          response.lon , response.lat
      ])
        window.map.removeLayer(window.vectorLayer);
        window.g = (new ol.format.GeoJSON()).readFeatures(window.geojsonObject);
        window.vectorSource = new ol.source.Vector({
            features: g
        });
        window.vectorLayer = new ol.layer.Vector({
          source: vectorSource,
          style: styleFunction
        });
        window.map.addLayer(window.vectorLayer);
        window.map.getView().setCenter(window.geojsonObject.features[0].geometry.coordinates);
      }});
  }
  intervalManager(true,fetchdata,5000);
}else{
  intervalManager(false);
}
});
