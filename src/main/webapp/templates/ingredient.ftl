[#ftl]

[#assign content]

<div class="page-header">
  <h2>${msg["ingr.add"]}<br /></h2>
</div>
<form action="/${recipe.id}/ingredient"
      method="post"
      class="submission" >
  <div class="submits margin-top centered">

      [#include "edit.ingredient.base.ftl"/]

    <input type="submit"
           class="btn primary inverse"
           value="${msg["ingr.add"]}"/>
  </div>
</form>
<a href="/${recipe.id}">${msg["view.h1"]}</a>
[/#assign]

[#include "layout.ftl"/]