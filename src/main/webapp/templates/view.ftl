[#ftl]

[#assign content]
<h1>${msg["view.h1"]}</h1>

<h2>${recipe.dishName}</h2>
<p>${recipe.specification}</p>
<p>${recipe.wayCooking}</p>
<p>${recipe.numberOfPerson}</p>
<p>${recipe.timeCooking}</p>
<p>${recipe.timeType}</p>
<p>${recipe.caloricValue}</p>
<p>${recipe.nationalAttach}</p>
<p>${recipe.complexity}</p>
<div class="left-float">
<a href="/${recipe.id}/~delete"
   class="btn important inverse"
   title="${msg['rec.delete']}">${msg["rec.delete.mat"]}
</a>
</div>
<div class="left-float">
  <a href="/${recipe.id}/~edit"
     class="btn primary inverse"
     title="${msg['rec.edit']}">${msg["rec.edit"]}
  </a>
</div>
<br/>
<div class="centered margin-top">
  <a href="/list"
     title="${msg['rec.list']}">${msg['rec.list']}
  </a>
</div>

[/#assign]

[#include "layout.ftl"/]