[#ftl]

[#assign content]
<div class="page-header">
  <h1>Процедурная страница <small>для эксперементов</small></h1>
</div>

<form class="navbar-search pull-right">
  <input type="text" class="search-query" placeholder="Search">
</form>

<a href="/test">на /test</a><br/>
<input type="text" name="fname" />

<input type="text" name="lname" /><br />

<input type="submit" value="Submit" />

<input name="Button" type="button" value="Мясо" onclick="top.location.href='/'" /> <br />
<br />



<textarea rows="18" cols="5"/> </textarea>




[/#assign]





[#include "layout.ftl"/]