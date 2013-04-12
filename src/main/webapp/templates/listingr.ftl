[#ftl]

[#assign content]
<h1>${msg["ingr.list"]} - ${recipe.dishName}</h1>
    [#list ingr as ing]
    <li><a href="/${recipe.id}/${ing.id}"
           class="green"
           title="${msg["rec.edit"]}:${ing.ingredientName}">${msg["rec.edit"]}:
                  ${ing.ingredientName}
    </a></li>
    [/#list]
<a href="/${recipe.id}/~edit">${msg["rec.edit"]}</a>

[/#assign]

[#include "layout.ftl"/]