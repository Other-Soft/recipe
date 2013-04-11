[#ftl]

[#assign content]

<div class="page-header">
  <h2>${msg["ingr.add"]}<br /></h2>
</div>
<form action="/${recipe.id}/ingredient"
      method="post"
      class="submission" >
  <div class="submits margin-top centered">


    <label for="i">${msg["ingr.name.lbl"]}</label>
    <div class="field">
      <div class="input">
        <input id="i"
               type="text"
               name="i"/>
      </div>
    </div>
    <label for="iw">${msg["ingr.weight.lbl"]}</label>
    <div class="field">
      <div class="input">
        <input id="iw"
               type="text"
               name="iw"/>
      </div>
    </div>
    <div class="input">
      <div class="input">
        <select id="iwt"
                class="select2"
                name="iwt">
          [#list conf.weights.children as w]
            <option value="${w.title}" selected="selected">${w.title}</option>
          [/#list]
        </select>
      </div>
    </div>


    <input type="submit"
           class="btn primary inverse"
           value="${msg["ingr.add"]}"/>
  </div>
</form>
<a href="/${recipe.id}">${msg["view.h1"]}</a>
[/#assign]

[#include "layout.ftl"/]