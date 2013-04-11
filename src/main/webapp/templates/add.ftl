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


<a href="/">${msg["on.main"]}</a>
[/#assign]

[#include "layout.ftl"/]