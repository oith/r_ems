<%@ page import="org.reflection.adm.AdmProcSts" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'admProcSts.label', default: 'Status')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#refresh').click(function () {
                window.location.reload();
            });
        });
    </script>

</head>

<body>
<div id="show-admProcSts" class="content scaffold-show" role="main">
    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title">
                <g:message code="default.show.label" args="[entityName]"/>

            </h3>
        </div>

        <div class="panel-body">
            <div class="container">
                <fieldset>
                    <g:if test="${admProcStsInstance?.procTitle}">
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label class="col-xs-4 bold">
                                    <g:message code="admProcSts.procTitle.label" default="Proc Title"/>
                                </label>

                                <div class="col-xs-8">
                                    ${admProcStsInstance?.procTitle}
                                </div>
                            </div>
                        </div>
                    </g:if>
                    <g:if test="${admProcStsInstance?.status}">
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label class="col-xs-4 bold">
                                    <g:message code="admProcSts.status.label"
                                               default="Status"/>
                                </label>

                                <div class="col-xs-8">
                                    ${admProcStsInstance?.status}
                                </div>
                            </div>
                        </div>
                    </g:if>
                    <g:if test="${admProcStsInstance?.startTime}">
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label class="col-xs-4 bold">
                                    <g:message code="admProcSts.startTime.label"
                                               default="Start Time"/>
                                </label>

                                <div class="col-xs-8">
                                    ${admProcStsInstance?.startTime}
                                </div>
                            </div>
                        </div>
                    </g:if>
                    <g:if test="${admProcStsInstance?.endTime}">
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label class="col-xs-4 bold">
                                    <g:message code="admProcSts.endTime.label"
                                               default="End Time"/>
                                </label>

                                <div class="col-xs-8">
                                    ${admProcStsInstance?.endTime}
                                </div>
                            </div>
                        </div>
                    </g:if>
                    <g:if test="${admProcStsInstance?.donePct}">
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label class="col-xs-4 bold">
                                    <g:message code="admProcSts.donePct.label"
                                               default="Done Pct"/>
                                </label>

                                <div class="col-xs-8">
                                    ${admProcStsInstance?.donePct}
                                </div>
                            </div>
                        </div>
                    </g:if>
                    <g:if test="${admProcStsInstance?.remainPct}">
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label class="col-xs-4 bold">
                                    <g:message code="admProcSts.remainPct.label"
                                               default="Remain Pct"/>
                                </label>

                                <div class="col-xs-8">
                                    ${admProcStsInstance?.remainPct}
                                </div>
                            </div>
                        </div>
                    </g:if>
                    <g:if test="${admProcStsInstance?.params}">
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label class="col-xs-4 bold">
                                    <g:message code="admProcSts.params.label"
                                               default="Params"/>
                                </label>

                                <div class="col-xs-8">
                                    ${admProcStsInstance?.params}
                                </div>
                            </div>
                        </div>
                    </g:if>
                    <g:if test="${admProcStsInstance?.outMessage}">
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label class="col-xs-4 bold">
                                    <g:message code="admProcSts.outMessage.label"
                                               default="Out Message"/>
                                </label>

                                <div class="col-xs-8">
                                    ${admProcStsInstance?.outMessage}
                                </div>
                            </div>
                        </div>
                    </g:if>
                    <g:if test="${admProcStsInstance?.outResult}">
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label class="col-xs-4 bold">
                                    <g:message code="admProcSts.outResult.label"
                                               default="Out Result"/>
                                </label>

                                <div class="col-xs-8">
                                    ${admProcStsInstance?.outResult}
                                </div>
                            </div>
                        </div>
                    </g:if>
                    <g:if test="${admProcStsInstance?.donePctSub}">
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label class="col-xs-4 bold">
                                    <g:message code="admProcSts.donePctSub.label"
                                               default="Done Pct Sub"/>
                                </label>

                                <div class="col-xs-8">
                                    ${admProcStsInstance?.donePctSub}
                                </div>
                            </div>
                        </div>
                    </g:if>
                    <g:if test="${admProcStsInstance?.remainPctSub}">
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label class="col-xs-4 bold">
                                    <g:message code="admProcSts.remainPctSub.label"
                                               default="Remain Pct Sub"/>
                                </label>

                                <div class="col-xs-8">
                                    ${admProcStsInstance?.remainPctSub}
                                </div>
                            </div>
                        </div>
                    </g:if>
                    <g:if test="${admProcStsInstance?.admUser}">
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label class="col-xs-4 bold">
                                    <g:message
                                            code="admProcSts.admUser.label" default="User"/>
                                </label>

                                <div class="col-xs-8">
                                    ${admProcStsInstance?.admUser}
                                </div>
                            </div>
                        </div>
                    </g:if>
                    <g:if test="${admProcStsInstance?.sqlError}">
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label class="col-xs-4 bold">
                                    <g:message
                                            code="admProcSts.sqlError.label" default="SQL Error"/>
                                </label>

                                <div class="col-xs-8">
                                    ${admProcStsInstance?.sqlError}
                                </div>
                            </div>
                        </div>
                    </g:if>
                </fieldset>
                <button id="refresh" class="btn btn-primary" value="Refresh">Refresh</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>
