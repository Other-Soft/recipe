[#ftl]

[#assign recipe = recipe!{}/]

<div class="fieldbox">
  <label for="n">Ведите название рецепта</label>
  <div class="field">
    <div class="input">
      <input id="n"
             type="text"
             class="focus"
             placeholder="Что нибудь эдакое..."
             value="${recipe.dishName!}"
             name="n"/>
    </div>
  </div>
</div>
<div class="grid">
  <div class="w25"
  <label for="i">Перечислите ингридиенты с указанием веса в граммах</label>
  <div class="field">
    <div class="field-area">
      <textarea id="i"
                rows="8"
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
                name="s">${recipe.specification!}</textarea>
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

                name="w">${recipe.wayCooking!}</textarea>
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
                 value="${recipe.nationalAttach!}"
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
                 value="${recipe.numberOfPerson!}"
                 name="p"/>
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
                 value="${recipe.timeCooking!}"
                 name="t"/>
        </div>
      </div>
    </div>
  </div>
  <div class="w25">
    <div class="fieldbox">
      <label for="v">калорийность</label>
      <div class="field">
        <div class="input">
          <input id="v"
                 type="text"
                 value="${recipe.caloricValue!}"
                 name="v"/>
        </div>
      </div>
    </div>
  </div>
  <div class="w25">
    <div class="fieldbox">
      <label for="c">сложность</label>
      <div class="field">
        <div class="input">
          <input id="c"
                 type="text"
                 value="${recipe.complexity!}"
                 name="c"/>
        </div>
      </div>
    </div>
  </div>
</div>