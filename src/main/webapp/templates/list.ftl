[#ftl]

[#assign content]

<form action="/search"
      method="get"
      class="submission" >

  <div class="field">
    <div class="input">
      <input id="sh"
             type="text"
             name="sh"/>
    </div>
    <input type="submit"
           class="btn"
           value="${msg["search"]}"/>

</form>


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