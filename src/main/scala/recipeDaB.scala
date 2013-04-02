package org.recipe

import pro.savant.circumflex._, orm._
import java.util.Date
import tools.nsc.backend.icode.analysis.CopyPropagation.Record

class recipeDB
    extends Record[Long, recipeDB]
    with IdentityGenerator[Long, recipeDB] {

  def PRIMARY_KEY: ValueHolder[Long, recipeDB] = id
  def relation: Relation[Long, recipeDB] = recipeDB

  val id = "id".BIGINT.NOT_NULL.AUTO_INCREMENT
  val dishname = "dishname".HTML.NOT_NULL
  val nationalattach = "national_attach".HTML
  val numberofperson = "number_of_person".HTML.NOT_NULL
  val specifecation = "specification".HTML.NOT_NULL
  val waycooking = "waycooking".HTML.NOT_NNULL
  val timecooking = "timecooking".HTML.NOT_NULL
  val complexity = "complexity".HTML.NOT_NULL
  val caloricvalue = "caloricvalue".HTML.NOT_NULL
}

object recipeDB extends recipeDB with Table[Long, recipeDB] {
  val uniqueDishname = UNIQUE(dishname)

  validation
      .unique(_.dishname)
      .notEmpty(_.dishname)
      .notEmpty(_.numberofperson)
      .notEmpty(_.specifecation)
      .notEmpty(_.waycooking)
      .notEmpty(_.timecooking)
      .notEmpty(_.complexity)
      .notEmpty(_.caloricvalue)

  private val r = recipeDB AS "r"

  def findByDishname(dishname: String) =
    SELECT(r.*)
        .FROM(r)
        .WHERE(r.dishname EQ dishname)
        .unique()
  def findByTimecooking(Timecooking: String) =
    SELECT(r.*)
        .FROM(r)
        .WHERE(r.timecooking LLIKE)
        .list()
}