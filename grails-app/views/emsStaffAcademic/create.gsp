<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'emsStaffAcademic.pageTitle.label', default: 'Ems Staff Academic')}"/>
        <title><g:message code="default.create.label" args="[entityName]"/></title>
    </head>
    <body>
        <div class="content-wrapper"><!-- Content Wrapper. Contains page content -->
            <section class="content-header"><!-- Content Header (Page header) -->
                <h1><g:message code="default.create.label" args="[entityName]"/></h1>
                <ul class="top-links">
                    <sec:access url="/emsStaffAcademic/index">
                        <li>
                            <g:link class="btn btn-block btn-vimeo btn-xs" action="index">
                                <i class="fa fa-reorder"></i> <g:message code="default.button.list.label" default="List"/>
                            </g:link>
                        </li>
                    </sec:access>
                </ul>
            </section><!-- /.content-header -->

            <section class="flash-message">
                <g:render template="../layouts/flashMessage"/>
            </section><!--Flash Message-->

            <section class="content"><!-- Main content -->
                <div id="create-emsStaffAcademic" class="box box-primary" role="main">
                    <g:form url="[resource: emsStaffAcademicInstance, action: 'save']" method="POST" >
                        <div class="box-body">
                            <g:render template="form" model="${[emsStaffAcademicInstance:emsStaffAcademicInstance]}"/>
                            <g:render template="formEmsStaffAcademicBranchs" model="${[emsStaffAcademicBranchsList : emsStaffAcademicInstance?.emsStaffAcademicBranchs]}"/>
                            <g:render template="formEmsStaffAcademicClasss" model="${[emsStaffAcademicClasssList : emsStaffAcademicInstance?.emsStaffAcademicClasss]}"/>
                            <g:render template="formEmsStaffAcademicContactInfos" model="${[emsStaffAcademicContactInfosList : emsStaffAcademicInstance?.emsStaffAcademicContactInfos]}"/>
                            <g:render template="formEmsStaffAcademicContactPersons" model="${[emsStaffAcademicContactPersonsList : emsStaffAcademicInstance?.emsStaffAcademicContactPersons]}"/>
                            <g:render template="formEmsStaffAcademicEducationInfos" model="${[emsStaffAcademicEducationInfosList : emsStaffAcademicInstance?.emsStaffAcademicEducationInfos]}"/>
                            <g:render template="formEmsStaffAcademicJobHistorys" model="${[emsStaffAcademicJobHistorysList : emsStaffAcademicInstance?.emsStaffAcademicJobHistorys]}"/>
                            <g:render template="formEmsStaffAcademicLanguages" model="${[emsStaffAcademicLanguagesList : emsStaffAcademicInstance?.emsStaffAcademicLanguages]}"/>
                            <g:render template="formEmsStaffAcademicShifts" model="${[emsStaffAcademicShiftsList : emsStaffAcademicInstance?.emsStaffAcademicShifts]}"/>
                            <g:render template="formEmsStaffAcademicSubjects" model="${[emsStaffAcademicSubjectsList : emsStaffAcademicInstance?.emsStaffAcademicSubjects]}"/>
                            <g:render template="formEmsStaffAcademicTrainings" model="${[emsStaffAcademicTrainingsList : emsStaffAcademicInstance?.emsStaffAcademicTrainings]}"/>
                            <g:render template="formEmsStaffAcademicTypeEducations" model="${[emsStaffAcademicTypeEducationsList : emsStaffAcademicInstance?.emsStaffAcademicTypeEducations]}"/>
                            <g:render template="formHrStaffContactInfos" model="${[hrStaffContactInfosList : emsStaffAcademicInstance?.hrStaffContactInfos]}"/>
                            <g:render template="formHrStaffContactPersons" model="${[hrStaffContactPersonsList : emsStaffAcademicInstance?.hrStaffContactPersons]}"/>
                            <g:render template="formHrStaffEducationInfos" model="${[hrStaffEducationInfosList : emsStaffAcademicInstance?.hrStaffEducationInfos]}"/>
                            <g:render template="formHrStaffJobHistorys" model="${[hrStaffJobHistorysList : emsStaffAcademicInstance?.hrStaffJobHistorys]}"/>
                            <g:render template="formHrStaffLanguages" model="${[hrStaffLanguagesList : emsStaffAcademicInstance?.hrStaffLanguages]}"/>
                            <g:render template="formHrStaffTrainings" model="${[hrStaffTrainingsList : emsStaffAcademicInstance?.hrStaffTrainings]}"/>
                        </div><!-- /.box-body -->
                        <div class="box-footer">
                            <fieldset class="buttons">
                                <sec:access url="/emsStaffAcademic/create">
                                    <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> ${message(code: "default.button.create.label", default: "Save")}</button>
                                </sec:access>
                                <button type="reset"  class="btn btn-warning pull-right" onclick="return confirm('${message(code: "default.message.reset.label", default: "Sure, you want to reset all value...?")}');"><i class="fa fa-refresh"></i> ${message(code: "default.button.reset.label", default: "Reset")}</button>
                            </fieldset>
                        </div><!-- /.box-footer -->
                    </g:form>
                </div><!-- /.box box-primary -->
            </section><!-- /.content -->
        </div><!-- /.content-wrapper -->
    </body>
</html>