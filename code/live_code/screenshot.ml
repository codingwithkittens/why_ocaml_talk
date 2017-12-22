type color = | Red | Green | Blue
type texture = | Dotted | Striped | Solid

type format = { color : color ; texture : texture }

type aspect = | Color of color | Texture of texture

let all_formats =
  [ { color = Red; texture = Dotted }
  ; { color = Red; texture = Striped }
  ; { color = Red; texture = Solid }
  ; { color = Blue; texture = Dotted }
  ; { color = Blue; texture = Striped }
  ; { color = Blue; texture = Solid }
  ; { color = Green; texture = Dotted }
  ; { color = Green; texture = Striped }
  ; { color = Green; texture = Solid }
  ]

let all_aspects = 
  [ Color Red
  ; Color Blue 
  ; Color Green 
  ; Texture Dotted
  ; Texture Striped
  ; Texture Solid
  ]
