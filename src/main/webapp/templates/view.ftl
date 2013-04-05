[#ftl]

[#assign content]
<h1>Просмотр рецепта</h1>

<h2>${recipe.dishName}</h2>
<p>${recipe.specification}</p>
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