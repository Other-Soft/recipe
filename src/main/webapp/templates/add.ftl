[#ftl]

[#assign content]

<div class="page-header">
  <h2>Здесь вы можете создавать и добавлять свои рецепты<br /><small>но пока тут мышь повесилась...</small></h2>
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
<a href="/">На главную</a>
[/#assign]

[#include "layout.ftl"/]