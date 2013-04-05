[#ftl]

[#assign content]
<h1>Здесь вы можете просмотреть свои рецепты</h1>
<p>но пока и тут мышь повесилась...</p>

[#list recipes as r]
<a href="/${r.id}"
   class="pill primary"
   title="${r.dishName}">${r.dishName}
</a>

[/#list]

<a href="/">На главную</a>
[/#assign]

[#include "layout.ftl"/]