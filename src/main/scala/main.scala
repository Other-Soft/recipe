package org.recipe

import pro.savant.circumflex._, core._, web._, freemarker._
import java.util.Date

class Main extends Router {
  val log = new Logger("org.recipe")

  'currentDate := new Date
  'conf := conf

  get("/") = ftl("/index.ftl")

  get("/locale.js") = {
    serveLastModified(msg.lastModified)
    response.contentType("application/javascript")
    ftl("/locale/locale.js.ftl")
  }

  get("/add") = {

    ftl("/add.ftl")
  }

  get("/list") = {
    'recipes := Recipe.all
    ftl("/list.ftl")
  }


  post("/?") = {
    try {
      val r = new Recipe
      r.dishName:= param("n").trim
      r.nationalAttach:= param("na").trim
      r.numberOfPerson:= param("p").trim
      r.specification:= param("s").trim
      r.wayCooking:= param("w").trim
      r.timeCooking:= param("t").trim
      r._timeType:= param("st").trim
      r.caloricValue:= param("v").trim
      r.complexity:= param("c").trim
      r.save()
      sendRedirect("/" + r.id() + "/ingredient")
    } catch {
      case e: ValidationException =>
        notices.addErrors(e.errors)
        sendRedirect("/add")
    }
  }




  sub("/:id") = {
    //fetch recipe

    val recipe = try {
      Recipe.get(param("id").toLong).getOrElse(sendError(404))
    } catch {
      case e: NumberFormatException => sendError(404)
    }
    'recipe := recipe

    get("/?") = {
      'ingr := recipe.ingredients.get
       ftl("/view.ftl")
    }

    get("/ingredient") = ftl("/ingredient.ftl")

    get("/~edit") = ftl("/edit.ftl")

    post("/ingredient") = {
      try {
      val ingredient = new Ingredient
      ingredient.recipe:= recipe
      ingredient.ingredientName:= param("i").trim
      ingredient.weight:= param("iw").trim
      ingredient.weightType:= param("iwt").trim
      ingredient.save()
      sendRedirect("/" + recipe.id() + "/ingredient")
    }  catch {
       case e: ValidationException =>
          notices.addErrors(e.errors)
          sendRedirect("/" + recipe.id() + "/ingredient")
      }
    }


    post("/?") = {
      recipe.dishName:=param("n").trim
      recipe.nationalAttach:= param("na").trim
      recipe.numberOfPerson:= param("p").trim
      recipe.specification:= param("s").trim
      recipe.wayCooking:= param("w").trim
      recipe.timeCooking:= param("t").trim
      recipe._timeType:= param("st").trim
      recipe.caloricValue:= param("v").trim
      recipe.complexity:= param("c").trim
      recipe.save()
      sendRedirect("/"+ recipe.id())
    }

    get("/~delete") = ftl("/delete.ftl")
    delete("/?") = {
      recipe.DELETE_!()
      sendRedirect("/list")
    }
  }

}