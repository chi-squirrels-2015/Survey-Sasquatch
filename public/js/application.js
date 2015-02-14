$(document).ready(function() {
  $('.login').on('click', function(event) {
    event.preventDefault();
    $('#login_form').css('visibility', 'visible')
    $('#signup_form').css('visibility', 'hidden')
  });
  $('.signup').on('click', function() {
    event.preventDefault();
    $('#signup_form').css('visibility', 'visible')
    $('#login_form').css('visibility', 'hidden')
  });
});
