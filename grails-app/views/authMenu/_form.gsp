<%@ page import="org.reflection.auth.AuthMenu" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: authMenuInstance, field: 'url', 'has-error')} required'>
            <label class='required'><g:message code="authMenu.url.label" default="Url"/></label>
            <g:textField name="url" class="form-control" value="${authMenuInstance?.url}" required="required"/>
            <g:renderErrors bean='authMenuInstance' field='url'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: authMenuInstance, field: 'title', 'has-error')} required'>
            <label class='required'><g:message code="authMenu.title.label" default="Title"/></label>
            <g:textField name="title" class="form-control" value="${authMenuInstance?.title}" required="required"/>
            <g:renderErrors bean='authMenuInstance' field='title'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: authMenuInstance, field: 'parentMenu', 'has-error')}'>
            <label><g:message code="authMenu.parentMenu.label" default="Parent Menu"/></label>
            <g:select name="parentMenu" class="form-control many-to-one" from="${org.reflection.auth.AuthMenu.list()}" value="${authMenuInstance?.parentMenu?.id}" optionKey="id" noSelection="['': 'Select One']"/>
            <g:renderErrors bean='authMenuInstance' field='parentMenu'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: authMenuInstance, field: 'isExternal', 'has-error')}'>
            <label><g:message code="authMenu.isExternal.label" default="Is External"/></label>
            <g:checkBox class="cb" name="isExternal"  value="${authMenuInstance?.isExternal}" />
            <g:renderErrors bean='authMenuInstance' field='isExternal'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: authMenuInstance, field: 'isOpenNewTab', 'has-error')}'>
            <label><g:message code="authMenu.isOpenNewTab.label" default="Is Open New Tab"/></label>
            <g:checkBox class="cb" name="isOpenNewTab"  value="${authMenuInstance?.isOpenNewTab}" />
            <g:renderErrors bean='authMenuInstance' field='isOpenNewTab'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: authMenuInstance, field: 'toolTip', 'has-error')}'>
            <label><g:message code="authMenu.toolTip.label" default="Tool Tip"/></label>
            <g:textField name="toolTip" class="form-control" value="${authMenuInstance?.toolTip}"/>
            <g:renderErrors bean='authMenuInstance' field='toolTip'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: authMenuInstance, field: 'isActive', 'has-error')}'>
            <label><g:message code="authMenu.isActive.label" default="Is Active"/></label>
            <g:checkBox class="cb" name="isActive"  value="${authMenuInstance?.isActive}" />
            <g:renderErrors bean='authMenuInstance' field='isActive'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: authMenuInstance, field: 'sortOrder', 'has-error')}'>
            <label><g:message code="authMenu.sortOrder.label" default="Sort Order"/></label>
            <g:field type="number" name="sortOrder" class="form-control" value="${authMenuInstance?.sortOrder}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='authMenuInstance' field='sortOrder'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: authMenuInstance, field: 'authMenuType', 'has-error')}'>
            <label><g:message code="authMenu.authMenuType.label" default="Auth Menu Type"/></label>
            <g:select name="authMenuType" class="form-control" from="${org.reflection.auth.AuthMenuType?.values()}" keys="${org.reflection.auth.AuthMenuType.values()*.name()}" value="${authMenuInstance?.authMenuType}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='authMenuInstance' field='authMenuType'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: authMenuInstance, field: 'code', 'has-error')}'>
            <label><g:message code="authMenu.code.label" default="Code"/></label>
            <g:textField name="code" class="form-control" value="${authMenuInstance?.code}" maxlength="4"/>
            <g:renderErrors bean='authMenuInstance' field='code'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: authMenuInstance, field: 'menuIcon', 'has-error')}'>
            <label><g:message code="authMenu.menuIcon.label" default="Menu Icon"/></label>
            <g:textField name="menuIcon" class="form-control" value="${authMenuInstance?.menuIcon}" maxlength="50"/>
            <g:renderErrors bean='authMenuInstance' field='menuIcon'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: authMenuInstance, field: 'description', 'has-error')}'>
            <label><g:message code="authMenu.description.label" default="Description"/></label>
            <g:textField name="description" class="form-control" value="${authMenuInstance?.description}" maxlength="250"/>
            <g:renderErrors bean='authMenuInstance' field='description'/>
        </div>
    </div>

</fieldset>