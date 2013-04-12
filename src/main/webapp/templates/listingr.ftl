[#ftl]

[#assign content]
<h1>${msg["ingr.list"]} - ${recipe.dishName}</h1>
<a href="/${recipe.id}/ingredient">${msg["ingr.add"]}</a>
<br/>
    [#list ingr as ing]
    <li><a href="/${recipe.id}/${ing.id}"
           class="green"
           title="${msg["ingr.edit"]}:${ing.ingredientName}">${msg["ingr.edit"]}:
                  ${ing.ingredientName}
    </a></li>
    [/#list]
<a href="/${recipe.id}/~edit">${msg["rec.edit"]}</a>

[/#assign]

[#include "layout.ftl"/]