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


    <input type="submit"
           class="btn primary inverse"
           value="${msg["ingr.add"]}"/>
  </div>
</form>
<a href="/">${msg["on.main"]}</a>
[/#assign]

[#include "layout.ftl"/]