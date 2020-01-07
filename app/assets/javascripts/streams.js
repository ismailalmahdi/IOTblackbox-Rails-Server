var frameCounter = 0;
document.addEventListener("turbolinks:load", function() {
  if($("body").hasClass("streams") && $("body").hasClass("index")) {
    var fetchstream = function (){
       $.ajax({
        url: "streams/1",
        type: 'get',
        success: function(response){
          //framecounting
          window.frameCounter = window.frameCounter + 1 ;

         // getting the link for the frames
         var results = $(response).find("#frame"+window.frameCounter);
         // putting it into the stream
         $("body #stream").attr('src',results.attr( 'src' ));


         //frameCounter reset
         if(window.frameCounter == 8){
            window.frameCounter = 0;
         }
        }});
    }
  }

  if($("body").hasClass("streams") && $("body").hasClass("index")){
    //videoStreamIntervalManager(false);
    //videoStreamIntervalManager(true,fetchstream,1000);
  }else{
    //videoStreamIntervalManager(false);
  }

});
