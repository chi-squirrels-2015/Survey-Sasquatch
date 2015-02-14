$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
  $("#questions_block").on("click", ".add_questions", function(event){
    event.preventDefault();

    var questionId = $("#question_form").find(".question").length

    var request = $.ajax({
      url: "/questions/new",
      type: "get",
      data: { num: questionId}
    })

    request.done(function(response){
      $("#question_form").append(response);
    });
  });

  $("#questions_block").on("click", ".add_choices", function(event){
    event.preventDefault();
    var choicesButton = $(this);
    var questionId = choicesButton.closest(".question").attr("data-question-id")

    var request = $.ajax({
      url: "/questions/choices/new",
      type: "get",
      data: {num: questionId}
    });

    request.done(function(response){
      choicesButton.before(response);
    });
  });

  $("#questions_block").on("click", ".remove_questions", function(event){
    event.preventDefault();
    var questionToRemove = $(this).closest(".question");

    questionToRemove.remove();

  });

  $("#questions_block").on("click", ".remove_choices", function(event){
    event.preventDefault();
      $(this).siblings(".choice").last().remove();
  });
});
