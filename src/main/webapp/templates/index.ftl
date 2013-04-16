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

<input type="button" onclick="add_input()" value="Добавить еще один инпут">
<form>
  <div id="inputi"><input name="my_input"></div>
  <script language="javascript">
    [#--// Помещаем созданный слой в уже имеющийся элемент "content" на странице.--]
    $('#content').append('<div class="my_class">Текст</div>')

    [#--// Создаем INPUT в слое "content"--]
    $('#content').append('<input type="text" name="user" value="Введите свое имя" />')
    // Создаем элемент DIV
    var input = $('<div>', {
      id: 'myId',
      class: 'myClass'
    });

    // Помещаем в слой "content"
    $('#content').append(input);
  </script>

</form>

[/#assign]

[#include "layout.ftl"/]
