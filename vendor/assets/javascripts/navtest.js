$(document).ready(function() {
  
  $(window).scroll(function () {
      //if you hard code, then use console
      //.log to determine when you want the 
      //nav bar to stick.  
      console.log($(window).scrollTop())
    if ($(window).scrollTop() > 450) {
      $('#nav_bar').addClass('navbar-fixed');
    }
    if ($(window).scrollTop() < 451) {
      $('#nav_bar').removeClass('navbar-fixed');
    }
  });
});

