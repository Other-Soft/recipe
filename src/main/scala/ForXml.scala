package org.recipe

import pro.savant.circumflex._, core._, web._, freemarker._
import java.io.File
import java.util.Date

class time (val name: String)
     extends  with XmlFile {

  def descriptorFile = new File("src/main/resources/time.xml")

  def elemName = "time"

  val t.id = attr("t.id")

  def read = {
    case "node" => new Node
  }
}