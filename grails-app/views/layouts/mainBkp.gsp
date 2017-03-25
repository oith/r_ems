<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    %{--===========================================================================================================================================================--}%
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Reflection"/></title>
    %{--===========================================================================================================================================================--}%
    <g:render template="/layouts/cssCommon"/>
    <g:layoutHead/>
    %{--===========================================================================================================================================================--}%
    <%
        String menuType = "menuLeft"   //menuTop, menuNone;
//        String menuType = "menuTop";
//    String menuType = "menuNone";
        String bodyClass = "hold-transition skin-blue sidebar-collapse sidebar-mini"
        if (menuType == 'menuLeft') {
            bodyClass = "hold-transition skin-blue sidebar-collapse sidebar-mini"
        }
        if (menuType == 'menuTop') {
            bodyClass = "hold-transition skin-blue layout-top-nav"
        }
    %>
</head>

<body class="${bodyClass}">
%{--<body class="hold-transition skin-blue sidebar-collapse sidebar-mini">--}%
%{--<body class="hold-transition skin-blue layout-top-nav">--}%
%{--<body class="hold-transition skin-blue sidebar-mini">--}%
%{--===========================================================================================================================================================--}%
%{--<div id="grailsLogo" role="banner"><a href="${request.contextPath}"><asset:image src="grails_logo.png" alt="Grails"/></a></div>                            --}%
%{--===========================================================================================================================================================--}%
<div class="wrapper">
    <g:if test="${menuType == 'menuTop'}">
        <g:render template="/layouts/headerWithMenuTop"/>
    </g:if>
    <g:elseif test="${menuType == 'menuLeft'}">
        <g:render template="/layouts/headerWithMenuLeft"/>
        <g:render template="/layouts/sideBarLeft"/>
    </g:elseif>
    <g:else>
        %{--if none--}%
    </g:else>
    <g:layoutBody/>
    <g:render template="/layouts/sideBarRight"/>
    <g:render template="/layouts/footer"/>
    <div id="spinner" class="spinner" style="display:none;"><g:message code="default.message.loading" default="Loading&hellip;"/></div>
</div>
%{--===========================================================================================================================================================--}%
<g:render template="/layouts/jsCommon"/>
%{--===========================================================================================================================================================--}%
</body>
</html>