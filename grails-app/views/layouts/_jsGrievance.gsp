<%-- 
    Document   : _js
    Created on : May 20, 2016, 5:02:03 PM
    Author     : hoshen.mahmud
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>

<!-- jQuery 2.2.0 -->
%{--<script type="text/javascript" src="${resource(dir: "resources/plugins/jQuery", file: "jquery.min.js")}"></script>--}%

<!-- Bootstrap 3.3.6 -->
<script type="text/javascript"
        src="${resource(dir: "resources/plugins/bootstrap/js", file: "bootstrap.min.js")}"></script>
<script type="text/javascript" src="${resource(dir: "js", file: "jquery.validate.min.js")}"></script>
<script type="text/javascript" src="${resource(dir: "js", file: "formDataTable.js")}"></script>

<!-- ChartJS 1.0.1 -->
%{--<script type="text/javascript" src="${resource(dir: "resources/plugins/chartjs", file: "Chart.min.js")}"></script>--}%
<!-- Morris.js charts -->
%{--<script type="text/javascript" src="${resource(dir: "resources/plugins/raphael", file: "raphael.min.js")}"></script>--}%
%{--<script type="text/javascript" src="${resource(dir: "resources/plugins/morris", file: "morris.min.js")}"></script>--}%
<!-- Sparkline -->
%{--<script type="text/javascript" src="${resource(dir: "resources/plugins/sparkline", file: "jquery.sparkline.min.js")}"></script>--}%
<!-- jvectormap -->
%{--<script type="text/javascript" src="${resource(dir: "resources/plugins/jvectormap", file: "jquery-jvectormap-1.2.2.min.js")}"></script>--}%
%{--<script type="text/javascript" src="${resource(dir: "resources/plugins/jvectormap", file: "jquery-jvectormap-world-mill-en.js")}"></script>--}%
<!-- jQuery Knob Chart -->
%{--<script type="text/javascript" src="${resource(dir: "resources/plugins/knob", file: "jquery.knob.js")}"></script>--}%
<!-- CK Editor -->
%{--<script type="text/javascript" src="${resource(dir: "resources/plugins/ckeditor", file: "ckeditor.js")}"></script>--}%
<!-- date-range-picker -->
%{--<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>--}%
%{--<script type="text/javascript" src="${resource(dir: "resources/plugins/moment", file: "moment.js")}"></script>--}%
%{--<script type="text/javascript" src="${resource(dir: "resources/plugins/daterangepicker", file: "moment.min.js")}"></script>         --}%%{-- NB : moment should be defined before dateRangePicker --}%
%{--<script type="text/javascript" src="${resource(dir: "resources/plugins/daterangepicker", file: "daterangepicker.js")}"></script>     NB : moment should be defined before dateRangePicker--}%
%{--<script type="text/javascript" src="${resource(dir: "resources/plugins/fullcalendar", file: "fullcalendar.min.js")}"></script>--}%
<!-- bootstrap datepicker -->
<script type="text/javascript"
        src="${resource(dir: "resources/plugins/datepicker", file: "bootstrap-datepicker.js")}"></script>
<!-- bootstrap time picker -->
%{--<script type="text/javascript" src="${resource(dir: "resources/plugins/timepicker", file: "bootstrap-timepicker.min.js")}"></script>--}%
<!-- bootstrapDateTime picker : 4.15.35 -->
%{--<script type="text/javascript" src="${resource(dir: "resources/plugins/bootstrap-datetimepicker", file: "bootstrap-datetimepicker.js")}"></script> --}%%{-- NB : bootstrap-datetimePicker requires moment.js plugin --}%
<!-- bootstrap color picker -->
%{--<script type="text/javascript" src="${resource(dir: "resources/plugins/colorpicker", file: "bootstrap-colorpicker.min.js")}"></script>--}%
<!-- Bootstrap WYSIHTML5 -->
%{--<script type="text/javascript" src="${resource(dir: "resources/plugins/bootstrap-wysihtml5", file: "bootstrap3-wysihtml5.all.min.js")}"></script>--}%
<!-- Slimscroll -->
%{--<script type="text/javascript" src="${resource(dir: "resources/plugins/slimScroll", file: "jquery.slimscroll.min.js")}"></script>--}%
<!-- FastClick -->
%{--<script type="text/javascript" src="${resource(dir: "resources/plugins/fastclick", file: "fastclick.js")}"></script>--}%

<!-- AdminLTE App -->
<script type="text/javascript" src="${resource(dir: "resources/plugins/admin-lte/js", file: "app.js")}"></script>
%{--<script type="text/javascript" src="${resource(dir: "resources/plugins/admin-lte/js", file: "app.min.js")}"></script>--}%
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
%{--<script type="text/javascript" src="${resource(dir: "resources/plugins/admin-lte/js/pages", file: "dashboard.js")}"></script>--}%
<!-- PACE -->
<script type="text/javascript" src="${resource(dir: "resources/plugins/pace", file: "pace.min.js")}"></script>
<!-- AdminLTE for demo purposes -->
<script type="text/javascript" src="${resource(dir: "resources/plugins/admin-lte/js", file: "config.js")}"></script>
<!-- InputMask -->
%{--<script type="text/javascript" src="${resource(dir: "resources/plugins/input-mask", file: "jquery.inputmask.js")}"></script>--}%
%{--<script type="text/javascript" src="${resource(dir: "resources/plugins/input-mask", file: "jquery.inputmask.date.extensions.js")}"></script>--}%
%{--<script type="text/javascript" src="${resource(dir: "resources/plugins/input-mask", file: "jquery.inputmask.extensions.js")}"></script>--}%

<!-- DataTables -->
<script type="text/javascript"
        src="${resource(dir: "resources/plugins/datatables", file: "jquery.dataTables.js")}"></script>
<script type="text/javascript"
        src="${resource(dir: "resources/plugins/datatables", file: "dataTables.bootstrap.min.js")}"></script>
<script type="text/javascript"
        src="${resource(dir: "resources/plugins/datatables/extensions/Responsive/js", file: "dataTables.responsive.js")}"></script>
<script type="text/javascript"
        src="${resource(dir: "resources/plugins/datatables/extensions/TableTools/js", file: "dataTables.tableTools.js")}"></script>

<!-- iCheck -->
<script type="text/javascript" src="${resource(dir: "resources/plugins/iCheck", file: "icheck.min.js")}"></script>
<!-- Select2 -->
%{--<link rel="stylesheet" type="text/css" href="${resource(dir: "resources/plugins/select2", file: "select2.full.min.js")}"/>--}%
<script type="text/javascript" src="${resource(dir: "resources/plugins/select2", file: "select2.min.js")}"></script>
<!-- jquery-confirm -->
%{--<script type="text/javascript" src="${resource(dir: "resources/plugins/jquery-confirm", file: "jquery-confirm.min.js")}"></script>--}%

%{-- Reflection; todo-marge with main : after final test. --}%
%{--<script type="text/javascript" src="${resource(dir: "resources/js", file: "main.js")}"></script>--}%
<script type="text/javascript" src="${resource(dir: "resources/plugins/reflection", file: "reflection.js")}"></script>
<script type="text/javascript" src="${resource(dir: "resources/plugins/reflection", file: "slide-to-top.js")}"></script>
<script type="text/javascript"
        src="${resource(dir: "resources/plugins/reflection", file: "skin-switcher.js")}"></script>
<script type="text/javascript"
        src="${resource(dir: "resources/plugins/reflection", file: "toggle-full-screen.js")}"></script>
<script type="text/javascript"
        src="${resource(dir: "resources/plugins/reflection", file: "custom-data-table.js")}"></script>
<script type="text/javascript"
        src="${resource(dir: "resources/plugins/reflection", file: "custom-master-details.js")}"></script>
<script type="text/javascript"
        src="${resource(dir: "resources/plugins/reflection", file: "custom-file-upload.js")}"></script>
%{--<script type="text/javascript" src="${resource(dir: "resources/plugins/reflection", file: "custom-confirm.js")}"></script>--}%

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
%{--The HTML5 Shiv enables use of HTML5 sectioning elements in legacy Internet Explorer and provides basic HTML5 styling for Internet Explorer 6-9, Safari 4.x (and iPhone 3.x), and Firefox 3.x.--}%
<!--<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>-->
<script type="text/javascript" src="${request.contextPath}/resources/plugins/html5shiv/html5shiv.min.js"></script>

%{--A fast & lightweight polyfill for min/max-width CSS3 Media Queries (for IE 6-8, and more)--}%
%{--<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>--}%
%{--<script type="text/javascript" src="${request.contextPath}/resources/plugins/respond/respond.min.js"></script>--}%

<![endif]-->
%{--<script type="text/javascript" src="${resource(dir: "resources/plugins/html5shiv", file: "html5shiv.min.js")}"></script>--}%
<script type="text/javascript" src="${resource(dir: "resources/plugins/respond", file: "respond.min.js")}"></script>

%{--<script type="text/javascript" src="${resource(dir: "resources/plugins/", file: "")}"></script>--}%

<script type="text/javascript" src="${resource(dir: 'resources/js/com', file: 'loadDivDisUpzUnpWard.js')}"></script>

<script type="text/javascript">
    var contextPath = "${request.contextPath}";
    jQuery(document).ready(function () {
    });

    %{--var dateFormatDefault = "${grailsApplication.config.grails.date.format.default}";--}%
    %{--var dateFormatBootStrap = "${grailsApplication.config.grails.date.format.BootStrap}";--}%
    %{--var dateFormatJqueryUi = "${grailsApplication.config.grails.date.format.Jquery.UI}";--}%
    %{--var dateTimeFormatDefault = "${grailsApplication.config.grails.dateTime.format.default}";--}%
    %{--var dateTimeFormatUi = "${grailsApplication.config.grails.dateTime.format.UI}";--}%
    //        var dobYearRange = "-100:+0";
    %{--var data_sample = '${resource(dir: 'resources/frameworks/jquery/jquery_datatable/Data-Sample', file: 'data-sample.json')}'                         //For : jQuery DataTable > Generating sample data.--}%
    %{--var sSwfPathCopyCsvXls = '${resource(dir: 'resources/frameworks/jquery/jquery_datatable/TableTools-2.2.4/swf', file: 'copy_csv_xls.swf')}'         //For : jQuery DataTable > Printing.--}%
    %{--var sSwfPathCopyCsvXlsPdf = '${resource(dir: 'resources/frameworks/jquery/jquery_datatable/TableTools-2.2.4/swf', file: 'copy_csv_xls_pdf.swf')}'  //For : jQuery DataTable > Printing.--}%
</script>