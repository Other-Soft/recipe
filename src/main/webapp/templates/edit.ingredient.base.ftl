[#ftl]

[#assign ingredient = ingredient!{}/]

<label for="i">${msg["ingr.name.lbl"]}</label>
<div class="field">
    <div class="input">
        <input id="i"
               type="text"
               value="${ingredient.ingredientName!}"
               name="i"/>
    </div>
</div>
<label for="iw">${msg["ingr.weight.lbl"]}</label>
<div class="field">
    <div class="input">
        <input id="iw"
               type="text"
               value="${ingredient.weight!}"
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