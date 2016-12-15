$( document ).ready(function() {
  $(".tab").click(function() {
    $("#group-challenge").removeClass( "active" );
    $("#self-challenge").removeClass( "active" );

    $(this).addClass( "active" );

    $(".tab-group-challenge").addClass("tab-invisible");
    $(".tab-self-challenge").addClass("tab-invisible");

    $(".tab-"+this.id).removeClass("tab-invisible");

  });
});
