[#ftl]

[#assign content]
<h1>Книга Рецептов</h1>
<p>мы ели мясо... </p>

<div class="right-float">

  <a href="/add"
     title="${msg['rec.add']}"
     class="btn primary inverse"> ${msg['rec.add']}
  </a>

  <a href="/read"
     class="btn primary "
     title="${msg['rec.view']}">${msg['rec.view']}
  </a>

  <a href="/delete"
      title="${msg['rec.delete']}"
      class="btn primary">${msg['rec.delete']}
  </a>

  <a href="/update"
     title="${msg['rec.edit']}"
     class="btn primary inverse">${msg['rec.edit']}
  </a>
</div>
</br>





<ul>
  <li><strong>Книга рецептов</strong>
    &mdash; этот сайт предназначен для хранения всевозможных рецептов кулинарных блюд,
    вы можете так же создавать свой рецепт, путем добавления его в основную базу данных,
    если вы добавили рецепт, а через некоторое время обнаружили, что он с ошибками то вы можете изменить его или удалить вовсе.
    Так же на этом сайте есть большая база рецептов.
    <a href="http://bazareceptov.ru/"
       target="_blank">
      База Рецептов</a>.
  </li>
  <li><strong>Ниже представлены основные функции которые вы можете делать с рецептами:</strong>
    <ul>
      <li><strong>Добавить</strong>
        &mdash; мы работаем над этим...</li>
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

[#include "/layout.ftl"/]
