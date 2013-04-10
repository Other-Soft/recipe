[#ftl]

[#assign content]
<h1>${msg["list.h1"]}</h1>
[#list recipes as r]
<li><a href="/${r.id}"
   class="green"
   title="${r.dishName}">${r.dishName}
</a></li>
[/#list]
<a href="/">${msg["on.main"]}</a>

[/#assign]

[#include "layout.ftl"/]