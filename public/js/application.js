$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
  $("#question_block").on("click", ".add_questions", function(event){
    event.preventDefault();
    $("#question_block")

    var request = $.ajax({
      url: "/questions/new",
      type: "get"
    })

    request.done(function(response){
      $("#question_block").append(response);
    });
  });



});
