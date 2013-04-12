[#ftl]

[#assign content]

<div class="page-header">
  <h2>${msg["ingr.add"]}<br /></h2>
</div>
<form action="/${recipe.id}/ingredient"
      method="post"
      class="submission" >
  [#include "edit.ingredient.base.ftl"/]
  <input type="submit"
         class="btn primary inverse"
         value="${msg["ingr.add"]}"/>
</form>
<a href="/${recipe.id}">${msg["view.h1"]}</a>

<p>${msg["added.ingredient"]}</p>
  [#list ingr as ing]
  <li><a href="/${recipe.id}/${ing.id}"
         title="${ing.ingredientName}">${ing.ingredientName}
  </a></li>
  [/#list]
[/#assign]

[#include "layout.ftl"/]