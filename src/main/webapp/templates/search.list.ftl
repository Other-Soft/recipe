[#ftl]

[#assign content]

<h1>${msg["list.h1"]}</h1>
  [#list search as sl]
  <li><a href="/${sl.id}"
         class="green"
         title="${sl.dishName}">${sl.dishName}
  </a></li>
  [/#list]
<a href="/list">${msg["on.main"]}</a>

[/#assign]

[#include "layout.ftl"/]