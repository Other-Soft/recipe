package org.recipe

import pro.savant.circumflex._, core._, xml._
import java.io.File
import java.util.Date


class Times
    extends ListHolder[Time] with XmlFile {

  def descriptorFile = new File("src/main/resources/time.xml")

  def elemName = "times"

  def read = {
    case "time" => new Time
  }
}

class Time extends StructHolder {

  def elemName = "time"

  val _id = attr("id")
  def id = _id.getOrElse("")

  def title = msg.format("time." + id)
}

