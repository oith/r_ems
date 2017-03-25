%{--<%@ page import="com.Property" %>--}%
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

    %{--<asset:stylesheet src="application.css"/>--}%
    <asset:javascript src="application.js"/>


    <g:layoutHead/>
    %{--===========================================================================================================================================================--}%
    <g:set var="bodyClass" value="hold-transition skin-blue sidebar-collapse sidebar-mini"/>
    %{--for expand sidebar--}%
    %{--<g:set var="bodyClass" value="hold-transition skin-blue  sidebar-mini"/>--}%
    %{---------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <g:set var="menuType" value="LEFT"/>
    %{--<g:set var="menuType" value="TOP_TREE"/>--}%
    %{--<g:set var="menuType" value="TOP_MEGA"/>--}%
    %{--<g:set var="menuType" value="NONE"/>--}%
    %{--TODO : Modify query--}%
    %{--${auth.UsersProperty.findByUser(applicationContext.springSecurityService?.currentUser)?.property}--}%
    %{--${System.out.println(com.Property.findAllByParentPropertyLike(com.Property.findByPropertyKey("TYPE"))?.id)}--}%
    %{--${System.out.println(auth.UsersProperty.findByUserAndPropertyInList(applicationContext.springSecurityService?.currentUser, com.Property.findAllByParentPropertyLike(com.Property.findByPropertyKey("TYPE")))?.property.toString())}--}%
    %{--<g:set var="menuType" value="${(auth.UsersProperty.findByUserAndPropertyInList(applicationContext.springSecurityService?.currentUser, com.Property.findAllByParentPropertyLike(com.Property.findByPropertyKey("TYPE")))?.property.toString()) ? (auth.UsersProperty.findByUserAndPropertyInList(applicationContext.springSecurityService?.currentUser, com.Property.findAllByParentPropertyLike(com.Property.findByPropertyKey("TYPE")))?.property.toString()) : "LEFT"}"/>--}%
    %{--${applicationContext.springSecurityService?.currentUser?.username}--}%
    %{---------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <g:if test="${menuType == 'LEFT'}">
    %{--<g:set var="bodyClass" value="hold-transition skin-blue sidebar-collapse sidebar-mini"/>--}%
        <g:set var="bodyClass" value="hold-transition skin-blue sidebar-mini"/>
    </g:if>
    <g:elseif test="${(menuType == 'TOP_TREE') || (menuType == 'TOP_MEGA')}">
        <g:set var="bodyClass" value="hold-transition skin-blue layout-top-nav"/>
    </g:elseif>
    <g:elseif test="${menuType == 'NONE'}">
        <g:set var="bodyClass" value="hold-transition skin-blue layout-top-nav"/>
    </g:elseif>
    %{---------------------------------------------------------------------------------------------------------------------------------------------------------------}%
</head>

<body class="${bodyClass}">
%{--<body class="hold-transition skin-blue layout-top-nav">--}%
%{--===========================================================================================================================================================--}%
%{--<div id="grailsLogo" role="banner"><a href="${request.contextPath}"><asset:image src="grails_logo.png" alt="Grails"/></a></div>                            --}%
<div class="wrapper">
    %{---------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <g:if test="${menuType == 'LEFT'}">
        <g:render template="/layouts/headerWithMenuLeft" model="${[menuType: menuType]}"/>
    </g:if>
    <g:elseif test="${(menuType == 'TOP_TREE') || (menuType == 'TOP_MEGA')}">
        <g:render template="/layouts/headerWithMenuTop" model="${[menuType: menuType]}"/>
    </g:elseif>
    <g:elseif test="${menuType == 'NONE'}">
        <g:render template="/layouts/headerWithMenuNone" model="${[menuType: menuType]}"/>
    </g:elseif>
    %{---------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <g:layoutBody/>
    <g:render template="/layouts/sideBarRight"/>
    <g:render template="/layouts/footer"/>
</div><!-- ./wrapper -->


%{--===========================================================================================================================================================--}%
<g:render template="/layouts/jsGrievance"/>
%{--===========================================================================================================================================================--}%
</body>
</html>