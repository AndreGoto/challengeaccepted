$( document ).ready(function() {
  $(".tab").click(function() {
    $("#about").removeClass( "active" );
    $("#message").removeClass( "active" );
    $("#members").removeClass( "active" );

    $(this).addClass( "active" );

    $(".tab-about").addClass("tab-invisible");
    $(".tab-message").addClass("tab-invisible");
    $(".tab-members").addClass("tab-invisible");
    $(".tab-"+this.id).removeClass("tab-invisible");

  });

  $('.datepicker').datepicker({
    format: 'yyyy-mm-dd',
    autoclose: true,
    todayHighlight: true
  });

  var objDiv = $("#messages")[0];
  objDiv.scrollTop = objDiv.scrollHeight;

  var objDiv2 = $(".bg-main-blue")[0];
  objDiv2.scrollTop = objDiv2.scrollHeight;

});
