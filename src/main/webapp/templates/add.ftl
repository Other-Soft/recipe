[#ftl]

[#assign content]

<div class="page-header">
  <h2>${msg["rec.add.head"]}<br /><small>${msg["rec.add.head.small"]}</small></h2>
</div>
<form action="/"
      method="post"
      class="submission" >
  [#include "edit.base.ftl"/]

    <input type="submit"
           class="btn"
           value="${msg['rec.add']}"/>

</form>


<a href="/">${msg["on.main"]}</a>
[/#assign]

[#include "layout.ftl"/]