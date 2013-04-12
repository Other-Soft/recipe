[#ftl]

[#assign content]

<div class="page-header">
  <h2>${msg["rec.edit.h2"]}<br /></h2>
</div>
<form action="/${recipe.id}"
      method="post"
      class="submission" >
  [#include "edit.base.ftl"/]
  <br/>
  <a href="/${recipe.id}/listingr">${msg["ingr.edit.lbl"]}</a>
  <br/>
  <input type="submit"
         class="btn"
         value="${msg['save']}"/>
</form>
<a href="/">${msg["on.main"]}</a>
[/#assign]

[#include "layout.ftl"/]