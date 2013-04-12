[#ftl]

[#assign content]

<div class="page-header">
    <h2>${msg["ingr.edit"]}<br /></h2>
</div>
<form action="/${recipe.id}/${ingredient.id}"
      method="post"
      class="submission" >
    <div class="submits margin-top centered">


        [#include "edit.ingredient.base.ftl"/]


        <input type="submit"
               class="btn primary inverse"
               value="${msg["save"]}"/>
    </div>
</form>

<form action="/${recipe.id}/${ingredient.id}"
      method="post"
      class="submission">
    <input type="hidden" name="_method" value="delete"/>
    <div class="submits margin-top centered">
        <input type="submit"
               class="btn important inverse"
               value="${msg['ingr.delete']}"/>
        <span>${msg['or']}</span>
        <a href="/${recipe.id}">${msg['cancel']}</a>
    </div>
</form>


<a href="/${recipe.id}/listingr">${msg["ingr.list"]}</a>
[/#assign]

[#include "layout.ftl"/]