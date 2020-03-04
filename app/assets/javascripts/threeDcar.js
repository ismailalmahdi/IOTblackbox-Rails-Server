var target = null;
var gauge = null;
var opts = {
  currval: 0,
  angle: 0, // The span of the gauge arc
  lineWidth: 0.2, // The line thickness
  radiusScale: 0.89, // Relative radius
  fontSize: 41,
  pointer: {
    length: 0.6, // // Relative to gauge radius
    strokeWidth: 0.06, // The thickness
    color: '#000000' // Fill color
  },
  limitMax: true,     // If false, max value increases automatically if value > maxValue
  limitMin: true,     // If true, the min value of the gauge will be fixed
  staticZones: [
   {strokeStyle: "#F03E3E", min: -180, max: -45}, // Red from 100 to 130
   {strokeStyle: "#FFDD00", min: -45, max: -20}, // Yellow
   {strokeStyle: "#30B32D", min: -20, max: 20}, // Green
   {strokeStyle: "#FFDD00", min: 20, max: 45}, // Yellow
   {strokeStyle: "#F03E3E", min: 45, max: -180}  // Red
  ],
  strokeColor: '#E0E0E0',  // to see which ones work best for you
  generateGradient: true,
  highDpiSupport: true,     // High resolution support
  // renderTicks is Optional
  renderTicks: {
    divisions: 8,
    divWidth: 1.1,
    divLength: 0.65,
    divColor: '#333333',
    subDivisions: 3,
    subLength: 0.5,
    subWidth: 0.6,
    subColor: '#666666'
  }

};

document.addEventListener("turbolinks:load", function() {

  var rx = -10;
  var ry = 180;
  var rz = 0;


  // status
  
});
