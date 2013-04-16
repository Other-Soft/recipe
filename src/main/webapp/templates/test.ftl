[#ftl]

[#assign content]

<input type="button" onclick="add_input()" value="Добавить еще один">
<form>
  <div id="inputi"><input name="my_input"></div>
</form>
<script type="text/javascript">
  function add_input() {
    document.getElementById("inputi").innerHTML =
        document.getElementById("inputi").innerHTML + 'инпут №' +
            document.getElementById('inputi').getElementsByTagName('input').count +
    '<input name="my_input">';
  }
</script>

<input type="button" onclick="add_input()" value="Добавить">
<form>
  <div id="input"><input name="my_input"></div>
</form>
<script type="text/javascript">
  var el = document.createElement('input');//создаем элемент
  el.setAttribute('type', 'text');//задаем атрибут type
  el.setAttribute('class', 'myclass');//задаем атрибут class
  el.setAttribute('maxlength', '25');//задаем атрибут maxlength
  document.appendChild(el);//прикрепляем созданный элемент в конец страницы
</script>


[/#assign]

[#include "layout.ftl"/]