[#ftl]

[#assign content]
<h1>${msg["main.title"]}</h1>
<p>${msg["index.p1"]}</p>
  <a href="/add"
     title="${msg['rec.add']}"
     class="btn primary inverse"> ${msg['rec.add']}
  </a>
  <a href="/list"
     class="btn primary "
     title="${msg['rec.list']}">${msg['rec.list']}
  </a>
<ul>
  <li> [#include "locale/rec.local.index.ftl"/]
  </li>
  <li><strong>${msg["index.functions"]}</strong>
    <ul>
      <li><strong>${msg["rec.add"]}</strong>
        &mdash; ${msg["rec.add.description"]}</li>
      <li><strong>${msg["rec.view"]}</strong></li>
      <li><strong>${msg["rec.delete"]}</strong></li>
      <li><strong>${msg["rec.edit"]}</strong></li>
    </ul>
  </li>
</ul>
<p style="font-weight:bold">${msg["index.p2"]}</p>
[/#assign]

[#include "layout.ftl"/]
