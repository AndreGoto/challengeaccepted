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

  $('.your-class').slick({
    dots: true,
    infinite: true,
    speed: 300,
    slidesToShow: 4,
    slidesToScroll: 4,
    prevArrow: true,
    nextArrow: true,
    responsive: [
      {
        breakpoint: 1024,
        settings: {
          slidesToShow: 4,
          slidesToScroll: 4
        }
      },
      {
        breakpoint: 600,
        settings: {
          slidesToShow: 3,
          slidesToScroll: 3
        }
      },
      {
        breakpoint: 480,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1
        }
      }
    ]
  });


  var objDiv = $("#messages")[0];
  if(objDiv){
    objDiv.scrollTop = objDiv.scrollHeight;

    var objDiv2 = $(".bg-main-blue")[0];
    if (objDiv2) {
      objDiv2.scrollTop = objDiv2.scrollHeight;
    }
  }

});

