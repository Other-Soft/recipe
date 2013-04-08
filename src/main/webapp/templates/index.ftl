[#ftl]

[#assign content]
<h1>${msg["main.title"]}</h1>
<p>мы ели мясо... </p>

<div class="right-float">

  <a href="/add"
     title="${msg['rec.add']}"
     class="btn primary inverse"> ${msg['rec.add']}
  </a>

  <a href="/list"
     class="btn primary "
     title="${msg['rec.list']}">${msg['rec.list']}
  </a>



</div>
</br>





<ul>
  <li> [#include "locale/rec.local.index.ftl"/]
  </li>
  <li><strong>Ниже представлены основные функции которые вы можете делать с рецептами:</strong>
    <ul>
      <li><strong>${msg["rec.add"]}</strong>
        &mdash; ${msg["rec.add.description"]}</li>
      <li><strong>Просмотреть</strong>
        &mdash;и над этим мы тоже пока работаем...

      </li>
      <li><strong>Удалить</strong>
        &mdash; ну вы понимаете, что впринцепи тут так же...</li>
      <li><strong>Изменить</strong>
        &mdash; и да, над этим мы тоже работаем...</li>
    </ul>
  </li>

</ul>

<p style="font-weight:bold">Приятного аппетита и не забудьте сказать спасибо !</p>
[/#assign]

[#include "layout.ftl"/]
