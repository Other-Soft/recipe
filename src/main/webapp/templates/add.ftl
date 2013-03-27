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
    <span class="help-block">Example block-level help text here.</span>

    </label>
    <button type="submit" class="btn">Submit</button>
  </fieldset>
</form>

<a href="/">На главную</a>
[/#assign]

[#include "layout.ftl"/]