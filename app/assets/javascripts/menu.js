$(document).ready(function ($) {
    var url = window.location.href;
    var activePage = url;
    $('.irp-menu-item a').each(function () {
        var linkPage = this.href;

        if (activePage == linkPage) {
            $(this).closest("li").addClass("active");
        }
    });
});

$(function() { 
    $('#navbar').on('click','.irp-menu-item', function ( e ) {
        e.preventDefault();
        $(this).parents('#navbar').find('.active').removeClass('active').end().end().addClass('active');
        window.location.href = ($('a', this).attr('href'));
    });
});

$(document).scroll(function() {
  if( $(this).scrollTop() > 50 ) {
    $(".navigation-content").addClass("main-nav-scrolled");
  } else {
    $(".navigation-content").removeClass("main-nav-scrolled");
  }
});