module ProductCard exposing (main)

import Browser
import Html exposing (Html, div, img, text, h2, p, button)
import Html.Attributes exposing (class, src, alt)
import Html.Events exposing (onClick)


-- MODEL

type alias Model =
    { title : String
    , price : String
    , imageUrl : String
    }

init : Model
init =
    { title = "Classic Leather Wallet"
    , price = "$89"
    , imageUrl = "https://example.com/wallet.jpg"
    }


-- UPDATE

type Msg
    = AddToCart

update : Msg -> Model -> Model
update msg model =
    case msg of
        AddToCart ->
            -- Here you could update the model or trigger a port
            model


-- VIEW

view : Model -> Html Msg
view model =
    div [ class "product-card" ]
        [ img [ src model.imageUrl, alt model.title, class "product-image" ] []
        , h2 [ class "product-title" ] [ text model.title ]
        , p [ class "product-price" ] [ text model.price ]
        , button [ onClick AddToCart, class "add-to-cart-btn" ] [ text "Add to Cart" ]
        ]


-- MAIN

main : Program () Model Msg
main =
    Browser.sandbox { init = init, update = update, view = view }
