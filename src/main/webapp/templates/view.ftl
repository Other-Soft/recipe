[#ftl]

[#assign content]
<h1>${msg["view.h1"]}</h1>

<h2>${recipe.dishName}</h2>
<p>${msg["rec.specification"]} ${recipe.specification}</p>

  <h3>${msg["ingredients"]}</h3>
  [#list ingr as ing]
  <li><a title="${ing.ingredientName}">${ing.ingredientName}
     <p>${ing.weight}</p>
  </a></li>
  [/#list]

<p>${msg["rec.create.wayCooking"]}: ${recipe.wayCooking}</p>
<p>${msg["rec.create.numberOfPerson"]}: ${recipe.numberOfPerson}</p>
<p>${msg["rec.create.timeCooking"]}: ${recipe.timeCooking} ${recipe._timeType}</p>
<p>${msg["rec.create.caloric"]}: ${recipe.caloricValue}</p>
<p>${msg["rec.create.nationalAttach"]}: ${recipe.nationalAttach}</p>
<p>${msg["rec.create.complexity"]}: ${recipe.complexity}</p>


<div class="left-float">
<a href="/${recipe.id}/~delete"
   class="btn"
   title="${msg['rec.delete']}">${msg["rec.delete.mat"]}
</a>
</div>
<div class="left-float">
  <a href="/${recipe.id}/~edit"
     class="btn"
     title="${msg['rec.edit']}">${msg["rec.edit"]}
  </a>
</div>
<br/>
  <a href="/list"
     title="${msg['rec.list']}">${msg['rec.list']}
  </a>

[/#assign]

[#include "layout.ftl"/]