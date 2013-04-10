[#ftl]

[#assign recipe = recipe!{}/]

<div class="fieldbox">
  <label for="n">${msg["rec.create.dishName"]}</label>
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









  <label for="in">${msg["rec.create.ingredient"]}</label>
  <div class="field">
    <div class="field-area">
      <textarea id="in"
                rows="8"
                type="text"
                name="in"></textarea>
    </div>
  </div>




<div class="fieldbox">
  <label for="s">${msg["rec.create.specification"]}</label>
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
  <label for="w">${msg["rec.create.wayCooking"]}</label>
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
      <label for="na">${msg["rec.create.nationalAttach"]}</label>
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
      <label for="p">${msg["rec.create.numberOfPerson"]}</label>
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
      <label for="t">${msg["rec.create.timeCooking"]}</label>
      <div class="field">
        <div class="input">
          <input id="t"
                 type="text"
                 placeholder=""
                 value="${recipe.timeCooking!}"
                 name="t"/>
        </div>
        <div class="input">
          <div class="input">
            <select id="st"
                    class="select2"
                    name="st">
              [#list conf.times.children as t]
                <option value="${t.title}" selected="selected">${t.title}</option>
              [/#list]
            </select>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="w25">
    <div class="fieldbox">
      <label for="v">${msg["rec.create.caloric"]}</label>
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
      <label for="c">${msg["rec.create.complexity"]}</label>
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

