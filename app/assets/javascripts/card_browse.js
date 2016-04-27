$(document).ready(function(){
  $("body").on('click', "a.card", getCard)
})

function getCard(){
  // event.preventDefault <-- probably not necessary here?
  var card_name = $(this).data("name")
  var card_multiverseid = $(this).data("multiverseid")

  $.ajax({
    url: "http://127.0.0.1:3000/api/v1/cards/" + card_multiverseid,
    // make this url unique to the card clicked and have it return internal API data
    method: "GET",
    dataType: "json",
    success: function(card){
      $(".selected_card").html('');
      $(card).each(function(index, card){
        // debugger
        $(".selected_card").append(
                  "<div class=card data-card-name="
                  + card.name
                  + " data-card-multiverseid="
                  + card.multiverseid
                  + ">"
                  + "<h1>Selected Card</h1>"
                  + "<img src="
                  + card.imageUrl
                  + " alt="
                  + card.name
                  + ">"
                  + "<br>"
                  // + "<a class='btn btn-primary' role='button' method='POST' href='/deck_cards'> +1 your Deck </a>  "
                  + "<button class='btn btn-primary' formmethod='POST' href='/deck_cards'> +1 your Deck </button>  "
                  + "<a class='btn btn-warning' role='button' method='POST' href='/deck_cards'> +4 your Deck </a>"
                  + "</div>");
      })

    },
    error: function(){
      alert("Something went wrong")
    }
  })
}
