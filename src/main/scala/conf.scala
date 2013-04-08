package org.recipe

import pro.savant.circumflex._, core._, cache._

class RecipeConfiguration {

  val _times = new CacheCell[Times](new Times load())
  def times = _times.get
}