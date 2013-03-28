[#ftl]

[#assign content]

<div class="page-header">
  <h1>Здесь вы можете создавать и добавлять свои рецепты<br /><small>но пока тут мышь повесилась...</small></h1>
</div>

<form>
  <fieldset>
    <legend>Создание рецепта</legend>
    <label>Введите название рецепта</label>
    <input type="text" placeholder="Что нибудь эдакое...">
    <span class="help-block">Перечислите ингридиенты с указанием веса в граммах</span>
    <textarea rows="7" cols="5"/> </textarea>
    <br />

    <span class="help-block">Опишите способ приготовления</span>
    <textarea rows="10" cols="5"/> </textarea>
    <br />

    <span class="help-block">Здесь введите национальную принадлежность если такая имеется</span>

    <input type="text" >
    <br />

    <button type="submit" class="btn">Добавить</button>
  </fieldset>
</form>

<a href="/">На главную</a>
[/#assign]

[#include "layout.ftl"/]