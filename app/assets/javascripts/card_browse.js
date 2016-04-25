$(document).ready(function(){
  $("body").on('click', "a.card", getCard)
})

function getCard(){
  // event.preventDefault <-- probably not necessary here?
  var card_name = $(this).data("name")
  var card_set = $(this).data("set")
  var card_image = $(this).data("image")

  $.ajax({
    url: "http://127.0.0.1:3000/browse",
    success: function(){
      $(".selected_card").html('')
      console.log(card_name)
      console.log(card_set)
      console.log(card_image)
      $(".selected-card").html(
        "<div class=card data-card-name="
        + card_name
        + " data-card-set="
        + card_set
        + ">"
        + "<h1>Selected Card</h1>"
        + "<img src="
        + card_image
        + " alt="
        + card_name
        + ">"
        + "<br>"
        + "<a class='btn btn-primary' role='button' href='#'> +1 your Deck </a>  "
        + "<a class='btn btn-warning' role='button' href='#'> +4 your Deck </a>"
        + "</div>"
      )
    }
  })
}
