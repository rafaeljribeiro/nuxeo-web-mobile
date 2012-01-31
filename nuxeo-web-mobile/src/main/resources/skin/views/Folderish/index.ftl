<@extends src="base.ftl">
<@block name="header">You signed in as ${Context.principal}</@block>

<@block name="content">
<div data-role="page">

    <div data-role="header">
        <h1>Page Title</h1>
    </div>

    <div data-role="content">
        <#list Adapter.children as child>
          <li>
            <#if child.common.icon != null && child.common.icon != "">
              <img src="${skinPath}${child.common.icon}" />
            </#if>
          <#if child.isFolder>
            <a href="${basePath}/mobile/doc/${child.id}/@folderish">${child.title}</a>
          <#else>
            <a href="${basePath}/mobile/doc/${child.id}">${child.title}</a>
          </#if>
        </#list>
    </div>

    <div data-role="footer">
        <h4>Page Footer</h4>
    </div>
</div>

</@block>
</@extends>
