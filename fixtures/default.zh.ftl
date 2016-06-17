files = { PLURAL($num) ->
  [0]     未找到相关档案
 *[other] 搜寻到{ $num }个档案。
}

posted-message = { $user1 }在{ DATETIME($dateR, year: "numeric", month: "long", day: "numeric") }张贴这个讯息。

edit = { PLURAL($num) ->
  [0] 昨天{ $gender -> 
     *[masculine] 你
      [feminine] 妳
    }没有校订任何网页。
 *[other] 昨天{ $gender -> 
     *[masculine] 你
      [feminine] 妳
    }校订{ $num }个网页。
}

query = 档案库查询耗时⁨{ $sec }秒。

login = { $gender -> 
     *[masculine] 你
      [feminine] 妳
}接受"{ $username1 }"为你的输入吗?
