<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: '_AdmRpt.pageTitle.label', default: 'Report')}"/>
    <title>${entityName}</title>
</head>

<body>
<div class="content-wrapper">
    <section class="content-header"><!-- Content Header (Page header) -->
        <h1>${entityName}</h1>
        <ul class="top-links">
            <sec:access url="/_AdmProc">
                <li>
                    <g:link class="btn btn-block btn-primary btn-xs" controller="_AdmProc" action="index">
                        <i class="fa fa-plus-circle "></i> <g:message code="default.button.process.label" default="Process"/>
                    </g:link>
                </li>
            </sec:access>
        </ul>
    </section><!-- /.content-header -->

    <section class="flash-message">
        <g:render template="../layouts/flashMessage"/>
    </section><!--Flash Message-->

    <section class="content"><!-- Main content -->
        <div class="box box-primary">
            <div class="box-body">
                <g:form controller="_AdmRpt" id="oith" name="oith" action="generateReport">
                    <fieldset class="fsStyle">
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                            <div class="form-group">
                                <label for="reportGroupId"><span>Report Group</span></label>
                                <g:select name="reportGroupId" id="reportGroupId" from="${reportGroupMap}" value="${params?.reportGroupId}" optionKey="id" noSelection="['${null}': 'Select One']" onchange="getReport()" class="reportGroupId form-control"/>
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                            <div class="form-group">
                                <label for="reportId"><span>Report Name</span><span class="required-indicator">*</span></label>
                                <g:select name="reportId" id="reportId" from="${reportMap}" value="${params?.reportId}" optionKey="id" noSelection="['': 'Select One']" required="required" onchange="getDynamicContent()" class="form-control"/>
                            </div>
                        </div>
                    </fieldset>

                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                        <div class="form-group">
                            <div id="dynamicContent" class="fieldcontain"></div>
                        </div>
                    </div>
                </g:form>
            </div><!-- /.box-body table-responsive no-padding -->
        </div><!-- /.box box-primary -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->
<script type="text/javascript">
    function hideAjaxLoadingImageProc() {
        $("#LoadingImageSrch").hide();
        $("#LoadingImageLoadProcess").hide();
        $("#LoadingImageExecuteProcess").hide();
    }
    function getReport() {
        $.ajax({
            type: "POST",
            url: "${request.contextPath}/_AdmRpt/getReport",
            data: {
                reportGroupId: $("#reportGroupId").val()
            },
            async: false,
            success: function (data) {
                hideAjaxLoadingImageProc();
                $("#reportId").empty().append(data);
            },
            error: function (err) {
                alert(err);
                hideAjaxLoadingImageProc();
            }
        });
    }
    function getDynamicContent() {
        $.ajax({
            type: "POST",
            url: "${request.contextPath}/_AdmRpt/getDynamicContent",
            dataType: 'JSON',
            data: {reportId: $('#reportId').val()},
            success: function (d) {
                $('#dynamicContent').empty().append(d.message);

                $(".date").datepicker({
                        changeMonth: true,
                        changeYear: true,
                        yearRange: '1950:+0',
                        defaultDate: '+0y',
                        dateFormat: 'dd/mm/yy'
                    }
                ).prop('placeholder', 'DD/MM/YYYY');

            },
            error: function (err) {
                alert("No Report Is Configured, Man 5466!!!" + err.message);
            }
        });
    }
</script>
</body>
</html>