$( document ).ready(function() {
  $(".tab").click(function() {
    $(".tab").removeClass( "active" );
    $(this).addClass( "active" );

    $(".tab-about").addClass("tab-invisible");
    $(".tab-messages").addClass("tab-invisible");
    $(".tab-"+$(this).val()).removeClass("tab-invisible");
  });

  $('.datepicker').datepicker({
    format: 'dd/mm/yyyy',
    autoclose: true,
    todayHighlight: true
  });

  var objDiv = $("#messages")[0];
  objDiv.scrollTop = objDiv.scrollHeight;

  var objDiv2 = $(".bg-main-blue")[0];
  objDiv2.scrollTop = objDiv2.scrollHeight;

});
