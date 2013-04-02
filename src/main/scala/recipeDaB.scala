package org.recipe

import pro.savant.circumflex._, orm._
import java.util.Date

class recipeDB
    extends Record[Long, recipeDB]
    with IdentityGenerator[Long, recipeDB] {

  def PRIMARY_KEY: ValueHolder[Long, recipeDB] = id
  def relation: Relation[Long, recipeDB] = recipeDB

  val id = "id".BIGINT.NOT_NULL.AUTO_INCREMENT
  val dishName = "dish_name".HTML.NOT_NULL
  val nationAlattach = "national_attach".HTML
  val numberOfPerson = "number_of_person".HTML.NOT_NULL
  val specifecation = "specification".HTML.NOT_NULL
  val wayCooking = "way_cooking".HTML.NOT_NULL
  val timeCooking = "time_cooking".HTML.NOT_NULL
  val complexity = "complexity".HTML.NOT_NULL
  val caloricValue = "caloric_value".HTML.NOT_NULL
}

object recipeDB extends recipeDB with Table[Long, recipeDB] {
  val uniqueDishname = UNIQUE(dishName)

  validation
      .unique(_.dishName)
      .notEmpty(_.dishName)
      .notEmpty(_.numberOfPerson)
      .notEmpty(_.specifecation)
      .notEmpty(_.wayCooking)
      .notEmpty(_.timeCooking)
      .notEmpty(_.complexity)
      .notEmpty(_.caloricValue)

  private val r = recipeDB AS "r"

  def findByDishname(dishname: String) =
    SELECT(r.*)
        .FROM(r)
        .WHERE(r.dishName EQ dishname)
        .unique()
  def findByTimecooking(Timecooking: String) =
    SELECT(r.*)
        .FROM(r)
        .WHERE(r.timeCooking LLIKE(Timecooking + "%"))
        .list()
}



