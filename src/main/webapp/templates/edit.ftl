[#ftl]

[#assign content]

<div class="page-header">
  <h2>${msg["rec.edit.h2"]}<br /></h2>
</div>
<form action="/${recipe.id}"
      method="post"
      class="submission" >
  [#include "edit.base.ftl"/]
  <div class="submits margin-top centered">
    <input type="submit"
           class="btn primary inverse"
           value="${msg['rec.edit']}"/>
  </div>
</form>
<a href="/">${msg["on.main"]}</a>
[/#assign]

[#include "layout.ftl"/]