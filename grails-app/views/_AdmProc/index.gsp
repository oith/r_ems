<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: '_admProc.pageTitle.label', default: 'Process')}"/>
    <title>${entityName}</title>
</head>

<body>
<div class="content-wrapper">
    <section class="content-header"><!-- Content Header (Page header) -->
        <h1>${entityName}</h1>
        <ul class="top-links">
            <sec:access url="/_AdmRpt">
                <li>
                    <g:link class="btn btn-block btn-primary btn-xs" controller="_AdmRpt" action="index">
                        <i class="fa fa-plus-circle "></i> <g:message code="default.button.report.label" default="Report"/>
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
                <g:form controller="_AdmProc" id="oith" name="oith" action="executeProcess">

                    <fieldset class="fsStyle">

                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                            <div class="form-group">
                                <label for="processGroupId"><span>Process Group</span></label>
                                <g:select name="processGroupId" id="processGroupId" from="${processGroupMap}" value="${params?.processGroupId}" optionKey="id" noSelection="['${null}': 'Select One']" onchange="getProcess()" class="form-control"/>
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                            <div class="form-group">
                                <label for="processId">
                                    <span>Process Name</span>
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:select name="processId" id="processId" from="${processMap}" value="${params?.processId}" optionKey="id" noSelection="['': 'Select One']" required="required" onchange="getDynamicContent()" class="form-control"/>
                            </div>
                        </div>

                    </fieldset>

                    <div id="error" class="col-xs-12"></div>

                    <div id="searchContent"></div>

                    <div id="searchButtonContent"></div>

                    <div id="paramsContent"></div>

                    <div id="buttonContent"></div>

                    <div id="fparams" style="display: none" class="fieldcontain"></div>

                    <div id="qparams" style="display: none" class="fieldcontain"></div>

                    <div id="outputMsg" class="outputMsg"></div>

                    <div id="tableContent"></div>

                    <div id="totalRecordDiv"></div>

                    <div id="errMsg"></div>

                </g:form>
            </div><!-- /.box-body table-responsive no-padding -->
        </div><!-- /.box box-primary -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->
<script type="text/javascript">

    jQuery(document).ready(function () {
        $("#tblAdmProc").dataTable({
//            paging:true,
//            info:true,
//            lengthChange:true
        });

    });

    $(document).on('click', '#checkAll', function () {
        if ($(this).is(':checked')) {
            $('.chkAplc').each(function () {
                $(this).prop('checked', true);
            });
        } else {
            $('.chkAplc').each(function () {
                $(this).prop('checked', false);
            });
        }
    });


    function hideAjaxLoadingImageProc() {
        $("#LoadingImageSrch").hide();
        $("#LoadingImageLoadProcess").hide();
        $("#LoadingImageExecuteProcess").hide();

    }

    function getProcess() {

        hideAjaxLoadingImageProc();

        $("#LoadingImageLoadProcess").show();
        $('#error').empty();
        $('#outputMsg'.toString()).addClass("highlight");
        $('#searchContent'.toString()).addClass("highlight");
        $('#searchButtonContent'.toString()).addClass("highlight");
        $('#paramsContent'.toString()).addClass("highlight");
        $('#buttonContent'.toString()).addClass("highlight");
        $('#tableContent'.toString()).addClass("highlight");
        $('#totalRecordDiv'.toString()).addClass("highlight");
        $('#errMsg'.toString()).addClass("highlight");
        $('#outputMsg'.toString()).empty();
        $('#searchContent'.toString()).empty();
        $('#searchButtonContent'.toString()).empty();
        $('#paramsContent'.toString()).empty();
        $('#buttonContent'.toString()).empty();
        $('#tableContent'.toString()).empty();
        $('#totalRecordDiv'.toString()).empty();
        $('#errMsg'.toString()).empty();
        $('#qparams').empty();

        $.ajax({
            type: "POST",
            url: "${request.contextPath}/_AdmProc/getProcess",
            data: {
                processGroupId: $("#processGroupId").val()
            },
            async: false,
            success: function (data) {
                hideAjaxLoadingImageProc();
                $("#processId".toString()).empty().append(data);
            },
            error: function (err) {
                alert(err);
                hideAjaxLoadingImageProc();
            }
        });
    }

    function getDynamicContent() {

        $('#error').empty();

        hideAjaxLoadingImageProc();

        $("#LoadingImageLoadProcess").show();

        $('#outputMsg').addClass("highlight");
        $('#searchContent').addClass("highlight");
        $('#searchButtonContent').addClass("highlight");
        $('#paramsContent').addClass("highlight");
        $('#buttonContent').addClass("highlight");
        $('#tableContent').addClass("highlight");
        $('#totalRecordDiv').addClass("highlight");
        $('#errMsg').addClass("highlight");

        $('#outputMsg'.toString()).empty();
        $('#searchContent'.toString()).empty();
        $('#searchButtonContent'.toString()).empty();
        $('#paramsContent'.toString()).empty();
        $('#buttonContent'.toString()).empty();
        $('#tableContent'.toString()).empty();
        $('#totalRecordDiv'.toString()).empty();
        $('#errMsg'.toString()).empty();
        $('#qparams').empty();

        $.ajax({
            type: "POST",
            url: "${request.contextPath}/_AdmProc/getDynamicContent",
            data: {processId: $('#processId').val()},
            success: function (d) {
                hideAjaxLoadingImageProc();
                $('#searchContent').append(d.searcher.toString()).addClass("form");
                $('#searchButtonContent').append(d.searcher_btner.toString()).addClass("buttons");
                $('#paramsContent').append(d.paramer.toString()).addClass("fieldcontain");
                $('#buttonContent').append(d.btner.toString()).addClass("btn-group btn-group-justified");
                $('#qparams').append(d.qparams.toString());

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
                alert("No Process Is Configured");
                hideAjaxLoadingImageProc();
            }
        });
    }

    function getDynamicTable() {
        hideAjaxLoadingImageProc();
        $("#LoadingImageSrch").show();
        var my_cars = {};
        var isReturn = false;

        $('#search').prop('disabled', true);

        $("#searchContent".toString()).find('.required').each(function () {

            if (($('#' + $(this).attr("id")).val()) == "") {
                alert('Enter required field');
                hideAjaxLoadingImageProc();
                isReturn = true;
                return false;
            }
        });

        if (isReturn) {
            return;
        }
        $("#searchContent".toString()).find(':input').each(function () {
            my_cars[$(this).attr("id")] = $('#' + $(this).attr("id")).val();
        });

        var strKeyVal = JSON.stringify(my_cars)
        $('#tableContent').empty();
        $('#totalRecordDiv').empty();
        $('#outputMsg').empty();

        $.ajax({
            type: "POST",
            url: "${request.contextPath}/_AdmProc/search",
            data: {
                strKeyVal: strKeyVal, processId: $('#processId').val()
            },
            success: function (d) {
                hideAjaxLoadingImageProc();
                $('#tableContent'.toString()).append(d.DATA_TABLE.toString());
                $('#totalRecordDiv'.toString()).append("<b>Total Records Found: " + d.TOTAL_RECORD.toString() + "</b>");
                $('#tableContent'.toString()).attr('class', 'fieldcontain');
                $('#totalRecordDiv'.toString()).attr('class', 'fieldcontain');
                $('#search').prop('disabled', false);

            },
            error: function (err) {
                alert(err.toString() + "No Process ddd");
                hideAjaxLoadingImageProc();
                $('#search').prop('disabled', false);
            }
        });
    }

    //when press the make new Emp.

    function executeProcess(btnId) {


        hideAjaxLoadingImageProc();
        var myParam = {};
        var isReturn = false;
        $('#errMsg').empty();

        if ($(".chkAplc".toString()).length != 0 && $(".chkAplc:checked").length == 0) {
            alert("Select at least one.");
//            $('#PRC2').prop('disabled', false);
            return;
        }
        var r = confirm("Are you really want to execute the process");
        if (r == true) {
            x = "You pressed OK!";
            $("#LoadingImageExecuteProcess").show();
        }
        else {
            return;
        }

        $("#paramsContent".toString()).find(':required').each(function () {
            if ($(this).val() === "") {
                alert('Enter required field');
                hideAjaxLoadingImageProc();
                isReturn = true;
                return false;
            }
        });

        if (isReturn) {
            return;
        }

        $("#paramsContent".toString()).find(':input').each(function () {

            myParam[$(this).attr("id")] = $('#' + $(this).attr("id")).val();

        });

        var porcTitleMApxLOC = {};
        porcTitleMApxLOC['PROC_BTN_ID'] = btnId;
        porcTitleMApxLOC['FIXED_PARAM_VAL'] = myParam;
        porcTitleMApxLOC['QU_PARAM_VAL'] = $('#qparams'.toString()).text();
        var spltqparams = $('#qparams'.toString()).text();
        var outSpltqparams = spltqparams.split(',');
        var arrKeyVal = {};

        var i = 1;

        $('.chkAplc').each(function () {
            if (this.checked) {
                var smy_cars = {};
                for (var j = 0; j < outSpltqparams.length; j++) {
                    smy_cars[outSpltqparams[j]] = $('#' + outSpltqparams[j] + '' + i).val();
                }
                arrKeyVal[i] = smy_cars;
            }
            i++;
        });

        var strKeyVal = JSON.stringify(arrKeyVal);
        var porcTitleMApx = JSON.stringify(porcTitleMApxLOC);

//        $("#buttonContent").find('.save').each(function () {
//            $('#' + $(this).attr("id")).prop('disabled', true);
//        });

        $('#' + btnId).prop('disabled', true);
        $.ajax({
            type: "POST",
            url: "${request.contextPath}/_AdmProc/executeProcess",
            data: {
                strKeyVal: strKeyVal,
                porcTitleMApx: porcTitleMApx,
                processId: $('#processId').val()
            },
            success: function (d) {
                hideAjaxLoadingImageProc();
                $('#outputMsg'.toString()).empty().append("Process executed on " + new Date() + "<br/>");
//                        $('#outputMsg').append("Process executed on " + new Date() + "<br/>");

                if (d.countsPass !== null)
                    $('#outputMsg').append("No of Successful Process:  " + d.countsPass.toString() + "<br/>");

                if (d.countsFail !== null)
                    $('#outputMsg').append("No of Failed Process:  " + d.countsFail.toString() + "<br/>");

                if (d.procOutLink !== null)
                    $('#outputMsg').append(d.procOutLink.toString());

                if (d.errMsg !== null)
                    $('#errMsg').append(d.errMsg.toString());

                $('#outputMsg'.toString).attr('class', 'fieldcontain');
                $('#errMsg'.toString).attr('class', 'fieldcontain');
//                btn-warning
                $('#' + btnId).prop('disabled', false);
            },

            error: function (dd) {
                alert("error" + dd);
//                hideAjaxLoadingImageProc();
                $('#' + btnId).prop('disabled', false);
//                $('#' + btnId).removeProp('disabled');
            }
        });

    }

    function completProcess() {
        $("#outputMsg").effect('slide', null, 100, callback);
        function callback() {
            setTimeout(function () {
                $("#outputMsg").removeAttr("style").hide().fadeIn("slow");
            }, 1000);
        }
    }

</script>
</body>
</html>