package org.recipe

import pro.savant.circumflex._, orm._

class Recipe
    extends Record[Long, Recipe]
    with IdentityGenerator[Long, Recipe] {

  def PRIMARY_KEY: ValueHolder[Long, Recipe] = id
  def relation: Relation[Long, Recipe] = Recipe

  val id = "id".BIGINT.NOT_NULL.AUTO_INCREMENT
  val dishName = "dish_name".HTML.NOT_NULL
  val nationalAttach = "national_attach".HTML
  val numberOfPerson = "number_of_person".HTML.NOT_NULL
  val specification = "specification".HTML.NOT_NULL
  val wayCooking = "way_cooking".HTML.NOT_NULL
  val timeCooking = "time_cooking".HTML.NOT_NULL
  val _timeType = "time_type".HTML.NOT_NULL
  val complexity = "complexity".HTML.NOT_NULL
  val caloricValue = "caloric_value".HTML.NOT_NULL

  def timeType = conf._times.

}

object Recipe extends Recipe with Table[Long, Recipe] {
  val uniqueDishname = UNIQUE(dishName)

  validation
      .unique(_.dishName)
      .notEmpty(_.dishName)
      .notEmpty(_.numberOfPerson)
      .notEmpty(_.specification)
      .notEmpty(_.wayCooking)
      .notEmpty(_.timeCooking)
      .notEmpty(_._timeType)
      .notEmpty(_.complexity)
      .notEmpty(_.caloricValue)

  private val r = Recipe AS "r"



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



