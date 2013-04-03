[#ftl]

[#assign content]

<div class="page-header">
  <h2>Здесь вы можете создавать и добавлять свои рецепты<br /><small>но пока тут мышь повесилась...</small></h2>
</div>

<form action="/add"
      method="post"
      class="submission content-output" >



    <div class="fieldbox">
       <label for="n">Ведите название рецепта</label>
       <div class="field">
         <div class="input">
           <input id="n"
                  type="text"
                  class="focus"
                  placeholder="Что нибудь эдакое..."
                  name="n"/>
         </div>
       </div>
    </div>

  <div class="grid">
    <div class="w50"
    <label for="i">Перечислите ингридиенты с указанием веса в граммах</label>
    <div class="field">
      <div class="field-area">
        <textarea id="i"
                  rows="5"
                  type="text"
                  name="i"></textarea>
      </div>
    </div>
    </div>
  </div>

  <div class="fieldbox">
    <label for="s">Введите краткое описание блюда</label>
    <div class="field">
      <div class="field-area">
        <textarea id="s"
                  rows="3"
                  type="text"
                  name="s"></textarea>
      </div>
    </div>
  </div>

  <div class="fieldbox">
    <label for="w">Опишите способ приготовления</label>
    <div class="field">
      <div class="field-area">
        <textarea id="w"
                  rows="10"
                  type="text"
                  name="w"></textarea>
      </div>
    </div>
  </div>

  <div class="grid">
    <div class="w25">
      <div class="fieldbox">
        <label for="na">национальность блюда</label>
        <div class="field">
          <div class="input">
            <input id="na"
                   type="text"
                   name="na"/>
          </div>
        </div>

      </div>
    </div>
    <div class="w25">
      <div class="fieldbox">
        <label for="p">количество персон</label>
        <div class="field">
          <div class="input">
            <input id="p"
                   type="text"

                   name="p"/>
          </div>
        </div>
      </div>
    </div>

    <div class="w25">
      <div class="fieldbox">
        <label for="с">калорийность</label>
        <div class="field">
          <div class="input">
            <input id="с"
                   type="text"

                   name="с"/>
          </div>
        </div>
      </div>
    </div>

    <div class="w25">
      <div class="fieldbox">
        <label for="t">время готовки</label>
        <div class="field">
          <div class="input">
            <input id="t"
                   type="text"
                   placeholder="в минутах"
                   name="t"/>
          </div>
        </div>
      </div>
    </div>

  </div>

  <div class="submits margin-top centered">
    <input type="submit"
           class="btn primary inverse"
           value="Добавить"/>

  </div>

</form>

<a href="/">На главную</a>
[/#assign]

[#include "layout.ftl"/]