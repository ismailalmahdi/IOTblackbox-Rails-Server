var currentMapInterval = null;
var welcomeMapInterval = null;

function currentMapIntervalManager(flag, myfunction, time) {
   if(flag)
     window.currentMapInterval =  setInterval(myfunction, time);
   else
     clearInterval(window.currentMapInterval);
}

function welcomeMapIntervalManager(flag, myfunction, time) {
   if(flag)
     window.welcomeMapInterval =  setInterval(myfunction, time);
   else
     clearInterval(window.welcomeMapInterval);
}
