<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'reportUploader.label', default: 'Upload Reports')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
</head>

<body>
<div id="create-reportUploader" class="content scaffold-create" role="main">
    <div class="panel panel-info">
        <div class="panel-heading">
            <g:if test="${flash.message}">
                ${flash.message}
            </g:if>
        </div>

        <div class="panel-body">
            <g:form controller="_AdmRptUpload" action="upload" enctype="multipart/form-data">
                <fieldset class="form">
                    <g:render template="form"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="upload" class="btn btn-primary btn-sm save"
                                    value="${message(code: 'default.button.upload.label', default: 'Upload')}"/>
                </fieldset>
            </g:form>
        </div>
    </div>
</div>
</body>
</html>
