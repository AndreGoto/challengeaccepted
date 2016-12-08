$( document ).ready(function() {
  $(".tab").click(function() {
    $(".tab").removeClass( "active" );
    $(this).addClass( "active" );
  });

  $('.datepicker').datepicker({
    format: 'dd/mm/yyyy',
    autoclose: true,
    todayHighlight: true
  });

});
