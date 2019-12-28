document.addEventListener("turbolinks:load", function() {
  initMap()
});

// style
var image = new ol.style.Circle({
  radius: 5,
  fill: new ol.style.Fill({
    color: 'rgba(10,50,250,1)'
  }),
  stroke: new ol.style.Stroke({color: '#5599FF', width: 3})
});
var styles = {
  'Point': new ol.style.Style({
    image: image
  }),
  'LineString': new ol.style.Style({
    stroke: new ol.style.Stroke({
      color: 'rgba(10,50,250,0.5)',
      width: 7
    })
  }),
  'MultiLineString': new ol.style.Style({
    stroke: new ol.style.Stroke({
      color: 'green',
      width: 1
    })
  }),
  'MultiPoint': new ol.style.Style({
    image: image
  }),
  'MultiPolygon': new ol.style.Style({
    stroke: new ol.style.Stroke({
      color: 'yellow',
      width: 1
    }),
    fill: new ol.style.Fill({
      color: 'rgba(255, 255, 0, 0.1)'
    })
  }),
  'Polygon': new ol.style.Style({
    stroke: new ol.style.Stroke({
      color: 'blue',
      lineDash: [4],
      width: 3
    }),
    fill: new ol.style.Fill({
      color: 'rgba(0, 0, 255, 0.1)'
    })
  }),
  'GeometryCollection': new ol.style.Style({
    stroke: new ol.style.Stroke({
      color: 'magenta',
      width: 2
    }),
    fill: new ol.style.Fill({
      color: 'magenta'
    }),
    image: new ol.style.Circle({
      radius: 10,
      fill: null,
      stroke: new ol.style.Stroke({
        color: 'magenta'
      })
    })
  }),
  'Circle': new ol.style.Style({
    stroke: new ol.style.Stroke({
      color: 'red',
      width: 2
    }),
    fill: new ol.style.Fill({
      color: 'rgba(255,0,0,0.2)'
    })
  })
};


// map init
const initMap =  () => {
  var styleFunction = function(feature) {
    return styles[feature.getGeometry().getType()];
  };
  var vectorSource = new ol.source.Vector({
    features: (new ol.format.GeoJSON()).readFeatures(geojsonObject)
  });

  var vectorLayer = new ol.layer.Vector({
    source: vectorSource,
    style: styleFunction
  });

  var map = new ol.Map({
    layers: [
      new ol.layer.Tile({
        source: new ol.source.OSM()
      }),
      vectorLayer
    ],
    target: 'map',
    view: new ol.View({
      center: geojsonObject.features[0].geometry.coordinates,
      zoom: 17
    })
  });
};






var geojsonObject =  {
  'type': 'FeatureCollection',
  'crs': {
    'type': 'name',
    'properties': {
      'name': 'EPSG:3857'
    }
  },
  'features': [{
    'type': 'Feature',
    'geometry': {
      'type': 'Point',
      'coordinates': ol.proj.fromLonLat([101.52614951133728,3.1050349640091572])
    }
  }, {
    'type': 'Feature',
    'geometry': {
      'type': 'LineString',
      'coordinates': [

        ol.proj.fromLonLat([
          101.52528047561646,
          3.1066204994296305
        ]),
        ol.proj.fromLonLat([
          101.5251624584198,
          3.107049022107522
        ]),
        ol.proj.fromLonLat([
          101.52499079704285,
          3.107616814387767
        ]),
        ol.proj.fromLonLat([
          101.52480840682983,
          3.108195319415713
        ]),
        ol.proj.fromLonLat([
          101.52459383010864,
          3.108870241547424
        ]),
        ol.proj.fromLonLat([
          101.5244436264038,
          3.1094915980488262
        ]),
        ol.proj.fromLonLat([
          101.52442216873169,
          3.1098772674173043
        ]),
        ol.proj.fromLonLat([
          101.52456164360046,
          3.1098986934892126
        ]),
        ol.proj.fromLonLat([
          101.52456164360046,
          3.109630867559262
        ]),
        ol.proj.fromLonLat([
          101.5247118473053,
          3.108880954593651
        ]),
        ol.proj.fromLonLat([
          101.52482986450195,
          3.108463145710117
        ]),
        ol.proj.fromLonLat([
          101.52503371238708,
          3.10783107554621
        ]),
        ol.proj.fromLonLat([
          101.52514100074768,
          3.107498970732084
        ]),
        ol.proj.fromLonLat([
          101.52535557746887,
          3.106781195454224
        ]),
        ol.proj.fromLonLat([
          101.52540922164917,
          3.1066097863604654
        ]),
        ol.proj.fromLonLat([
          101.52549505233765,
          3.1063526726676214
        ]),
        ol.proj.fromLonLat([
          101.52578473091125,
          3.1057634535520333
        ]),
        ol.proj.fromLonLat([
          101.52599930763245,
          3.105345643434482
        ]),
        ol.proj.fromLonLat([
          101.52614951133728,
          3.1050349640091572
        ])

      ]
    }
  }]
};
