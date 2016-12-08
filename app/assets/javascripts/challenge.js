$( document ).ready(function() {
  $(".tab").click(function() {
    $(".tab").removeClass( "active" );
    $(this).addClass( "active" );

    $(".tab-about").addClass("tab-invisible");
    $(".tab-messages").addClass("tab-invisible");
    $(".tab-"+$(this).val()).removeClass("tab-invisible");
  });

  $('.datepicker').datepicker();
});
