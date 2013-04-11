package org.recipe

import pro.savant.circumflex._, orm._

class Recipe
    extends Record[Long, Recipe]
    with IdentityGenerator[Long, Recipe] {

  def PRIMARY_KEY: ValueHolder[Long, Recipe] = id
  def relation: Relation[Long, Recipe] = Recipe
  def ingredients = inverseMany(Ingredient.recipe)

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

}

object Recipe extends Recipe with Table[Long, Recipe] {
  val uniqueDishName = UNIQUE(dishName)

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

class Ingredient
    extends Record[Long, Ingredient]
    with IdentityGenerator[Long, Ingredient] {


  def PRIMARY_KEY: ValueHolder[Long, Ingredient] = id

  def relation: Relation[Long, Ingredient] = Ingredient

  val id = "id".BIGINT.NOT_NULL.AUTO_INCREMENT
  val recipe = "recipe_id".BIGINT.NOT_NULL
     .REFERENCES(Recipe).ON_DELETE(CASCADE).ON_UPDATE(CASCADE)
  val ingredientName = "ingredient_name".HTML.NOT_NULL
  val ingredientType = "ingr_Type".HTML
  val weight = "weight".HTML.NOT_NULL
  val weightType = "weight_type".HTML.NOT_NULL
}

object Ingredient
    extends Ingredient
    with Table[Long, Ingredient] {

  validation
      .notEmpty(_.ingredientName)
      .notEmpty(_.weight)
}







