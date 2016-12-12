 $("#on-going-challenge").click(function() {
    $('.on-going-challenge').show();
    $('.finished-challenge').hide();
    $('.pending-challenge').hide();
  });

  $("#finished-challenge").click(function() {
    $('.finished-challenge').show();
    $('.on-going-challenge').hide();
    $('.pending-challenge').hide();
  });

  $("#pending-challenge").click(function() {
    $('.pending-challenge').show();
    $('.finished-challenge').hide();
    $('.on-going-challenge').hide();
  });

  $('.finished-challenge').hide();
    $('.pending-challenge').hide();
