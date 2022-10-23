module View exposing (View, map, placeholder)

import Element exposing (Element)


type alias View msg =
    { title : String
    , body : Element msg
    }


map : (msg1 -> msg2) -> View msg1 -> View msg2
map fn doc =
    { title = doc.title
    , body = doc.body |> Element.map fn
    }


placeholder : String -> View msg
placeholder moduleName =
    { title = moduleName
    , body = Element.text moduleName
    }
