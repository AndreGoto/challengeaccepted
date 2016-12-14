$( document ).ready(function() {
  $(".tab").click(function() {
    $("#pending-challenge").removeClass( "active" );
    $("#on-going-challenge").removeClass( "active" );
    $("#finished-challenge").removeClass( "active" );

    $(this).addClass( "active" );

    $(".tab-pending-challenge").addClass("tab-invisible");
    $(".tab-on-going-challenge").addClass("tab-invisible");
    $(".tab-finished-challenge").addClass("tab-invisible");
    $(".tab-"+this.id).removeClass("tab-invisible");

  });
});
