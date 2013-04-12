[#ftl]

[#assign content]
<h1>${msg["rec.delete"]}</h1>
<form action="/${recipe.id}"
      method="post"
      class="submission">
  <input type="hidden" name="_method" value="delete"/>

    <input type="submit"
           class="btn"
           value="${msg['rec.delete']}"/>
    <span>${msg['or']}</span>
    <a href="/${recipe.id}">${msg['cancel']}</a>
      </form>
<p>...</p>
<a href="/">${msg["on.main"]}</a>
[/#assign]

[#include "layout.ftl"/]