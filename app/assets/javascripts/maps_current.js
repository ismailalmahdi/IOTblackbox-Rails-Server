var currentUrl = null;
document.addEventListener("turbolinks:load", function() {
  if((($("body").hasClass("maps") && $("body").hasClass("current"))||($("body").hasClass("welcome") && $("body").hasClass("index")))
  && window.geojsonObject != null){
  var g = (new ol.format.GeoJSON()).readFeatures(window.geojsonObject);
  var vectorSource = new ol.source.Vector({
      features: g
  });
  var vectorLayer = new ol.layer.Vector({
    source: vectorSource,
    style: styleFunction
  });

  window.map.addLayer(vectorLayer);
  var view = window.map.getView();
  view.animate({center: window.geojsonObject.features[0].geometry.coordinates, duration: 5000,easing: ol.easeOut});
  view.animate({zoom: 17, duration: 5000, easing: ol.easeIn });

  var fetchdata = function (){
    console.log(currentUrl);
     $.ajax({
      url: window.currentUrl,
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
        window.map.addLayer(window.vectorLayer);;
        var view = window.map.getView();
        view.animate({center: window.geojsonObject.features[0].geometry.coordinates, duration: 5000,easing: ol.easeOut});
        view.animate({zoom: 17, duration: 5000, easing: ol.easeIn });
      }});
  }
}

if($("body").hasClass("maps") && $("body").hasClass("current")){
  currentMapIntervalManager(false);
  currentMapIntervalManager(true,fetchdata,5000);
}else{
  currentMapIntervalManager(false);
}

if($("body").hasClass("welcome") && $("body").hasClass("index")){
  welcomeMapIntervalManager(false);
  welcomeMapIntervalManager(true,fetchdata,5000);
}else{
  welcomeMapIntervalManager(false);
}
});
