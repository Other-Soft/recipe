package org.recipe

import pro.savant.circumflex._, core._, xml._
import java.io.File
import java.util.Date

class Weights
    extends ListHolder[Weight] with XmlFile {

  def descriptorFile = new File("src/main/resources/weight.xml")

  def elemName = "weights"

  def read = {
    case "weight" => new Weight
  }
}

class Weight
    extends StructHolder {

  def elemName = "weight"

  val _id = attr("id")
  def id = _id.getOrElse("")

  def title = msg.format("weight." + id)

}