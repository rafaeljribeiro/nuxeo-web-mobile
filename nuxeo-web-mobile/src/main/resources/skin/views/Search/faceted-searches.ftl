<@extends src="base.ftl">

<@block name="content">
<div data-role="page">

    <div data-role="header">
        <h1>Search</h1>
    </div>

    <div data-role="content" class="comments">
      <h1>My Searches</h1>
        <#if mySearches?size == 0>
          <h3>You have no Faceted stored</h3>
        <#else>
        <#list mySearches as doc>
          <li class="ui-btn ui-btn-icon-right ui-li-has-arrow ui-li ui-li-has-count ui-li-has-icon ui-btn-up-c">
            <a class="ui-link-inherit" href="${Root.path}/doc/${doc.id}/@faceted">
            <#if doc.common.icon != null && doc.common.icon != "">
                <img class="ui-li-icon ui-li-thumb" src="${skinPath}${doc.common.icon}" />
            <#else>
                <img class="ui-li-icon ui-li-thumb" src="${skinPath}icons/file.gif" />
            </#if>
                <span>${doc.title}</span>
              </a>
          </li>
        </#list>
        </#if>
      <h1>Shared Searches</h1>
        <#if sharedSearches?size == 0>
          <h3>There is no Shared Faceted</h3>
        <#else>
        <#list mySearches as doc>
          <li class="ui-btn ui-btn-icon-right ui-li-has-arrow ui-li ui-li-has-count ui-li-has-icon ui-btn-up-c">
            <a class="ui-link-inherit" href="${Root.path}/doc/${doc.id}/@faceted">
            <#if doc.common.icon != null && doc.common.icon != "">
                <img class="ui-li-icon ui-li-thumb" src="${skinPath}${doc.common.icon}" />
            <#else>
                <img class="ui-li-icon ui-li-thumb" src="${skinPath}icons/file.gif" />
            </#if>
                <span>${doc.title}</span>
              </a>
          </li>
        </#list>
        </#if>

    <div data-role="footer">
        <h4>Page Footer</h4>
    </div>
</div>

</@block>
</@extends>