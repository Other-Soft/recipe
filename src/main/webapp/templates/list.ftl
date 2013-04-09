[#ftl]

[#assign content]
<h1>${msg["list.h1"]}</h1>
[#list recipes as r]
<a href="/${r.id}"
   class="pill primary"
   title="${r.dishName}">${r.dishName}
</a>
[/#list]
<a href="/">${msg["on.main"]}</a>
[/#assign]

[#include "layout.ftl"/]