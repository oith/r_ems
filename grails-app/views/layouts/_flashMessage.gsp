<!-- flash message -->
<g:if test="${flash.success || flash.message || flash.warning || flash.error}">

    <style type="text/css">
        .flash-message {
            margin-bottom: 25px;
        }

        .flash-message .messageBody {
            margin-left  : 15px;
            margin-top   : 10px;
            margin-right : 15px;
            margin-bottom: -32px;
        }
    </style>

    <div class="messageBody">
        <g:if test="${flash.success}">
            <div class="alert alert-success alert-dismissable success">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <i class="icon fa fa-check"></i>
                ${flash.success}
            </div>
        </g:if>
        <g:if test="${flash.message}">
            <div class="alert alert-info alert-dismissable message">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <i class="icon fa fa-info"></i>
                ${flash.message}
            </div>
        </g:if>
        <g:if test="${flash.warning}">
            <div class="alert alert-warning alert-dismissable warning">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <i class="icon fa fa-remove"></i>
                ${flash.warning}
            </div>
        </g:if>
        <g:if test="${flash.error}">
            <div class="alert alert-danger alert-dismissable error">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <i class="icon fa fa-remove"></i>
                ${flash.error}
            </div>
        </g:if>
    </div>
    <script type="text/javascript">
        setTimeout(function () {
            $('.success').fadeOut();
        },  15000);
        setTimeout(function () {
            $('.message').fadeOut();
        },  60000);
        setTimeout(function () {
            $('.warning').fadeOut();
        },  30000);
        setTimeout(function () {
            $('.error').fadeOut();
        }, 120000);
    </script>
</g:if>
<!-- flash message end -->