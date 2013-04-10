[#ftl]

[#assign content]

<div class="page-header">
  <h2>${msg["rec.add.head"]}<br /><small>${msg["rec.add.head.small"]}</small></h2>
</div>
<form action="/"
      method="post"
      class="submission" >
  [#include "edit.base.ftl"/]
  <div class="submits margin-top centered">
    <input type="submit"
           class="btn primary inverse"
           value="${msg['rec.add']}"/>
  </div>
</form>


<form action="/ingr"
      method="post"
      class="submission" >
<input type="submit"
       class="btn"
       value="${msg['rec.add']}"/>

<label for="i">${msg["rec.create.ingredient"]}</label>
<div class="field">
  <div class="input">
    <input id="i"
           type="text"
           name="i"/>
  </div>
</div>

<label for="wt">${msg["ingredient.weight"]}</label>
<div class="field">
  <div class="input">
    <input id="wt"
           type="text"
           name="wt"/>
  </div>
</div>
</form>
<a href="/">${msg["on.main"]}</a>
[/#assign]

[#include "layout.ftl"/]