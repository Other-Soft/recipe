[#ftl]

[#assign content]
<h1>Книга Рецептов</h1>
<p>мы ели мясо...
<input name="Button" type="button" value="Добавить" onclick="top.location.href='/add'" />
<input name="Button" type="button" value="Просмотреть" onclick="top.location.href='/read'" />
<input name="Button" type="button" value="Удалить" onclick="top.location.href='/delete'" />
<input name="Button" type="button" value="Изменить" onclick="top.location.href='/update'" />
</p>
<ul>
  <li><strong>книга рецептов</strong>
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
