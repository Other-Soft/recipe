[#ftl]

[#assign content]

<div class="page-header">
  <h2>Здесь вы можете редактировать свои рецепты<br /></h2>
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
<a href="/">На главную</a>
[/#assign]

[#include "layout.ftl"/]