[#ftl]

[#assign content]

<div class="page-header">
    <h2>${msg["ingr.edit"]}<br /></h2>
</div>
<form action="/${recipe.id}/${ingredient.id}"
      method="post"
      class="submission">
        [#include "edit.ingredient.base.ftl"/]
        <input type="submit"
               class="btn primary inverse"
               value="${msg["save"]}"/>
</form>

<form action="/${recipe.id}/${ingredient.id}"
      method="post"
      class="submission">
    <input type="hidden" name="_method" value="delete"/>
        <input type="submit"
               class="btn important inverse"
               value="${msg['ingr.delete']}"/>
        <span>${msg['or']}</span>
        <a href="/${recipe.id}">${msg['cancel']}</a>
</form>


<a href="/${recipe.id}/listingr">${msg["ingr.list"]}</a>
[/#assign]

[#include "layout.ftl"/]