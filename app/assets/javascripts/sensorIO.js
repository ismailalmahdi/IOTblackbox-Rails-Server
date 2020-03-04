document.addEventListener("turbolinks:load", function() {
  if($("body").hasClass("welcome") || $("body").hasClass("sensors")){
    $(".ioButton").click(function(){
      var currentButton = $(this);
      currentButton.addClass("awaitStatus");
      setTimeout(
      function()
      {
        var val = Math.round(Math.random());

        $("#value").val(val);
        currentButton.removeClass('awaitStatus');
        currentButton.removeClass('statusSuccess');
        currentButton.removeClass('statusError');
        if(val == 1){
          currentButton.addClass('statusSuccess');
        }else{
          currentButton.addClass('statusError');
        }
      }, 5000);

    });
  }
});
