$(document).ready(function(){
  $("body").on('click', "a.card", getCard)
})

function getCard(){
  // event.preventDefault <-- probably not necessary here?
  var card_name = $(this).data("name")
  var card_set = $(this).data("set")
  var card_image = $(this).data("image")
debugger
  $.ajax({
    url: "https://api.magicthegathering.io/v1/cards?name=" + card_name + "&set=" + card_set + ""
    // params: {name: card_name, set: card_set}
    method: GET
    success: function(){
      // $(".selected_card").html('')
      $(".selected_card").html(
        "<div class=card data-card-name="
        debugger
        + card_name
        + " data-card-set="
        + card_set
        + ">"
        + "<img src="
        + card_image
        + "alt="
        + card_name
        + ">"
        There is a card here?!
        + "</div>"
      )
    }
  })
}
