files = { PLURAL($num) ->
  [0]     Nie znaleziono żadnych plików.
  [1]     Znaleziono jeden plik.
  [few]     Znaleziono { $num } pliki.
  [many]     Znaleziono { $num } plików.
 *[other]     Znaleziono { $num } plików.
}

posted-message = { $gender ->
 *[masculine] { $user1 } opublikował 
  [feminine] { $user1 } opublikowała
} tę wiadomość { DATETIME($dateR, day: "numeric", month: "long") }.

edit = Wczoraj { PLURAL($num) ->
  [0] nie { $gender -> 
     *[masculine] edytowałeś 
      [feminine] edytowałaś
    } żadnej nowej strony.
  [1] { $gender -> 
     *[masculine] edytowałeś 
      [feminine] edytowałaś
    } jedną nową stronę.
  [few] { $gender -> 
     *[masculine] edytowałeś 
      [feminine] edytowałaś
    } { $num } nowe strony.
  [many] { $gender -> 
     *[masculine] edytowałeś 
      [feminine] edytowałaś
    } { $num } nowych stron.
 *[other] { $gender -> 
     *[masculine] edytowałeś 
      [feminine] edytowałaś
    } { $num } nowych stron.
} 

query = Kwerenda w bazie danych zajęła { PLURAL($sec) ->
  [0] zero sekund.
  [1] jedną sekundę.
  [few] { $sec } sekundy.
  [many] { $sec } sekund.
 *[other] { $sec } sekundy.
}

login = Czy { $gender ->
 *[masculine] zaakceptowałbyś 
  [feminine] zaakceptowałabyś
} "{ $username1 }" jako Twój login?