package org.recipe

import pro.savant.circumflex._, core._, web._, freemarker._
import java.util.Date

class Main extends Router {
  val log = new Logger("org.recipe")

  'currentDate := new Date

  get("/test") = "I'm fine, thanks!"
  get("/") = ftl("index.ftl")

  get("/add") = ftl("/add.ftl")
  get("/read") = ftl("/read.ftl")
  get("/delete") = ftl("/delete.ftl")
  get("/update") = ftl("/update.ftl")
  get("/my-route")  = ftl("/my-route.ftl")

  get("/*.html") = ftl("/" + uri(1) + ".ftl")

}