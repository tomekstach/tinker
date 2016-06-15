files = { PLURAL($num) ->
  [0]     No matching files found.
  [1]     One matching file found.
  [2]     Two matching files found.
 *[other] { $num } matching files found.
}

posted-message = { $user1 } posted this message on { DATETIME($dateR, day: "numeric", month: "long") }

edit = Yesterday you edited { PLURAL($num) ->
  [0] no new pages.
  [1] one new page.
  [2] two new pages.
 *[other] { $num } new pages.
} 

query = The database query took { PLURAL($sec) ->
  [1] one second
 *[other] { $sec } seconds.
}

login = Would you accept "{ $username1 }" as your login?