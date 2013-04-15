[#ftl]

[#assign content]

<input type="button" onclick="add_input()" value="Добавить еще один инпут">
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




[/#assign]

[#include "layout.ftl"/]