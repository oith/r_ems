<%@ page import="org.reflection.auth.AuthUser" %>
<link rel="stylesheet" type="text/css" href="${resource(dir: "resources/plugins/cropper", file: "cropper.css")}">
<style type="text/css">

/* Image cropper style */
.img-preview, .sign-preview {
    width: 100%;
    overflow: hidden;
    border: 1px solid #0088ff;
    text-align: center !important;
}

.image-crop, .img-preview-sm {
    height: 256px !important;
    width: 256px !important;
}

.sign-crop, .sign-preview-sm {
    height: 100px !important;
    width: 256px !important;
}
</style>
<fieldset class='form'>
    <div class="col-lg-6 no-padding">

        <div class="col-md-12">
            <div class="box box-success">
                <div class="box-header with-border">
                    <h3 class="box-title"><g:message code="user.personalInfo.label" default="Personal Information"/></h3>

                    <div class="box-tools pull-right">
                        %{--<span class="label label-danger">8 New Members</span>--}%
                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        %{--<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>--}%
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body no-padding">

                    <div class='col-xs-12 col-sm-12'>
                        <div class='form-group ${hasErrors(bean: userInstance, field: 'fullName', 'has-error')}'>
                            <label class="required"><g:message code="user.fullName.label" default="Full Name"/></label>
                            <g:textField name="fullName" class="form-control transparent" value="${userInstance?.fullName}" disabled="disabled"/>
                            <g:renderErrors bean='userInstance' field='fullName'/>
                        </div>
                    </div>

                    <div class='col-xs-12 col-sm-6'>
                        <div class='form-group ${hasErrors(bean: userInstance, field: 'username', 'has-error')} required'>
                            <label class='required'><g:message code="user.username.label" default="Username"/></label>
                            <g:textField name="username" class="form-control transparent" value="${userInstance?.username}" disabled="disabled"/>
                            <g:renderErrors bean='userInstance' field='username'/>
                        </div>
                    </div>

                    <div class='col-xs-12 col-sm-6'>
                        <div class='form-group ${hasErrors(bean: userInstance, field: 'displayName', 'has-error')} required'>
                            <label class='required'><g:message code="user.displayName.label" default="Display Name"/></label>
                            <g:textField name="displayName" class="form-control" value="${userInstance?.displayName}" maxlength="15" required="required"/>
                            <g:renderErrors bean='userInstance' field='displayName'/>
                        </div>
                    </div>

                </div>
                <!-- /.box-body -->
                %{--<div class="box-footer text-center">--}%
                %{--<a href="javascript:void(0)" class="uppercase">View All Users</a>--}%
                %{--</div>--}%
                <!-- /.box-footer -->
            </div>
            <!--/.box -->
        </div>

        <div class="col-md-12">
            <div class="box box-warning">
                <div class="box-header with-border">
                    <h3 class="box-title"><g:message code="user.contactInfo.label" default="Contact Information"/></h3>

                    <div class="box-tools pull-right">
                        %{--<span class="label label-danger">8 New Members</span>--}%
                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        %{--<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>--}%
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body no-padding">

                    <div class='col-xs-12 col-sm-6'>
                        <div class='form-group ${hasErrors(bean: userInstance, field: 'phone', 'has-error')}'>
                            <label><g:message code="user.phone.label" default="Phone"/></label>
                            <g:textField name="phone" class="form-control" value="${userInstance?.phone}" maxlength="15"/>
                            <g:renderErrors bean='userInstance' field='phone'/>
                        </div>
                    </div>

                    <div class='col-xs-12 col-sm-6'>
                        <div class='form-group ${hasErrors(bean: userInstance, field: 'email', 'has-error')}'>
                            <label><g:message code="user.email.label" default="Email"/></label>
                            <g:field type="email" name="email" class="form-control" value="${userInstance?.email}" placeholder="someone@example.com" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,3}\$" title="someone@example.com"/>
                            <g:renderErrors bean='userInstance' field='email'/>
                        </div>
                    </div>

                </div>
                <!-- /.box-body -->
                %{--<div class="box-footer text-center">--}%
                %{--<a href="javascript:void(0)" class="uppercase">View All Users</a>--}%
                %{--</div>--}%
                <!-- /.box-footer -->
            </div>
            <!--/.box -->
        </div>

        <div class="col-md-12">
            <div class="box box-danger">
                <div class="box-header with-border">
                    <h3 class="box-title"><g:message code="user.changePassword.label" default="Change Password"/></h3>

                    <div class="box-tools pull-right">
                        %{--<span class="label label-danger">8 New Members</span>--}%
                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        %{--<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>--}%
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body no-padding">

                    <div class='col-xs-12 col-sm-6'>
                        <div class='form-group ${hasErrors(bean: userInstance, field: 'password', 'has-error')} required'>
                            <label><g:message code="user.newPassword.label" default="New Password"/></label>
                            %{--<g:field type="password" name="password" class="form-control" value="${userInstance?.password}" pattern="(?=.*\\d)(?=.*[a-z])(?=\\.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" maxlength="100" required="required"/>--}%
                            <g:field type="password" name="newPassword" id="newPassword" autocomplete="off" class="form-control" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" maxlength="100"/>
                            <g:renderErrors bean='userInstance' field='newPassword'/>
                        </div>
                    </div>

                    <div class='col-xs-12 col-sm-6'>
                        <div class='form-group ${hasErrors(bean: userInstance, field: 'password', 'has-error')} required'>
                            <label><g:message code="user.confirmPassword.label" default="Confirm Password"/></label>
                            %{--<g:field type="password" name="password" class="form-control" value="${userInstance?.password}" pattern="(?=.*\\d)(?=.*[a-z])(?=\\.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" maxlength="100" required="required"/>--}%
                            <g:field type="password" name="confirmPassword" id="confirmPassword" autocomplete="off" class="form-control" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" maxlength="100"/>
                            <g:renderErrors bean='userInstance' field='confirmPassword'/>
                        </div>
                    </div>

                </div>
                <!-- /.box-body -->
                %{--<div class="box-footer text-center">--}%
                %{--<a href="javascript:void(0)" class="uppercase">View All Users</a>--}%
                %{--</div>--}%
                <!-- /.box-footer -->
            </div>
            <!--/.box -->
        </div>

    </div>


    <div class="col-lg-6 no-padding">
        %{--
        <div class="col-md-12">
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title"><g:message code="user.images.label" default="Images"/></h3>

                    <div class="box-tools pull-right">
                        <span class="label label-danger">8 New Members</span>
                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body no-padding">

                    <div class='col-xs-12 col-sm-12'>
                        <div class='form-group ${hasErrors(bean: userInstance, field: 'image', 'has-error')}'>
                            <label><g:message code="user.image.label" default="Image Path"/></label>
                            <g:textArea name="image" class="form-control" value="${userInstance?.image}" rows="2" cols="40" maxlength="2000"/>
                            <g:renderErrors bean='userInstance' field='image'/>
                        </div>
                    </div>

                    <div class='col-xs-12 col-sm-12'>
                        <div class='form-group ${hasErrors(bean: userInstance, field: 'signature', 'has-error')}'>
                            <label><g:message code="user.signature.label" default="Signature Path"/></label>
                            <g:textArea name="signature" class="form-control" value="${userInstance?.signature}" rows="2" cols="40" maxlength="2000"/>
                            <g:renderErrors bean='userInstance' field='signature'/>
                        </div>
                    </div>

                </div>
                <!-- /.box-body -->
                <div class="box-footer text-center">
                    <a href="javascript:void(0)" class="uppercase">View All Users</a>
                </div>
                <!-- /.box-footer -->
            </div>
            <!--/.box -->
        </div>
        --}%

        <div class="col-md-12">
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title"><g:message code="user.images.label" default="Images"/></h3>

                    <div class="box-tools pull-right">
                        <span class="label label-danger">8 New Members</span>
                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        %{--<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>--}%
                    </div>
                </div>
                <!-- /.box-header -->

                <div class="box-body no-padding">

                %{--
                    <div class='col-xs-12 col-sm-12'>
                        <div class='form-group ${hasErrors(bean: userInstance, field: 'image', 'has-error')}'>
                            <label><g:message code="user.image.label" default="Image Path"/></label>
                            <g:textArea name="image" class="form-control" value="${userInstance?.image}" rows="2" cols="40" maxlength="2000"/>
                            <g:renderErrors bean='userInstance' field='image'/>
                        </div>
                    </div>
                --}%


                    <div class='col-xs-6 col-sm-6'>
                        <div class='form-group ${hasErrors(bean: userInstance, field: 'image', 'has-error')}'>
                            <label><g:message code="user.image.label" default="Image"/></label>
                            %{--<g:textArea name="image" class="form-control" value="${userInstance?.image}" rows="2" cols="40" maxlength="2000"/>--}%
                            <div class="image-crop">
                                %{--<img src="${resource(dir: "resources/images/user", file: "saif_khan.jpg")}" alt="AuthUser Image">--}%
                                <img name="image" src="${applicationContext.springSecurityService?.currentUser?.image ? resource(dir: "resources/images/user", file: "saif_khan.jpg") : (resource(dir: "resources/images/", file: "user_icon.png"))}" class="user-image" alt="AuthUser Image">
                            </div>
                            <g:renderErrors bean='userInstance' field='image'/>
                        </div>
                    </div>

                    <div class='col-xs-6 col-sm-6'>
                        <div class='form-group'>
                            <label><g:message code="user.imagePreview.label" default="Preview"/></label>
                            %{--<g:textArea name="image" class="form-control" value="${userInstance?.image}" rows="2" cols="40" maxlength="2000"/>--}%
                            <div class="img-preview img-preview-sm"></div>
                            <g:renderErrors bean='userInstance' field='image'/>
                        </div>
                    </div>

                </div>

                <!-- /.box-body -->
                <div class="box-footer text-center">
                    <div class="btn-group">
                        <label title="Upload image file" class="btn btn-primary">
                            <input type="file" accept="image/*" name="file" id="inputImage" class="hide">
                            <i class="fa fa-upload" aria-hidden="true"></i>
                            <g:message code="user.uploadNewImage.label" default="Upload new image"/>
                        </label>
                        <button class="btn btn-primary" id="zoomIn" type="button">
                            <i class="fa fa-search-plus" aria-hidden="true"></i>
                            <g:message code="user.zoomIn.label" default="Zoom In"/>
                        </button>
                        <button class="btn btn-primary" id="zoomOut" type="button">
                            <i class="fa fa-search-minus" aria-hidden="true"></i>
                            <g:message code="user.zoomOut.label" default="Zoom Out"/>
                        </button>
                        <button class="btn btn-primary" id="rotateLeft" type="button">
                            <i class="fa fa-rotate-left" aria-hidden="true"></i>
                            <g:message code="user.rotateLeft.label" default="Rotate Left"/>
                        </button>
                        <button class="btn btn-primary" id="rotateRight" type="button">
                            <i class="fa fa-rotate-right" aria-hidden="true"></i>
                            <g:message code="user.rotateRight.label" default="Rotate Right"/>
                        </button>
                    </div>
                </div>      <!-- /.box-footer -->

                <div class="box-footer no-padding">

                %{--
                    <div class='col-xs-12 col-sm-12'>
                        <div class='form-group ${hasErrors(bean: userInstance, field: 'signature', 'has-error')}'>
                            <label><g:message code="user.signature.label" default="Signature Path"/></label>
                            <g:textArea name="signature" class="form-control" value="${userInstance?.signature}" rows="2" cols="40" maxlength="2000"/>
                            <g:renderErrors bean='userInstance' field='signature'/>
                        </div>
                    </div>
                --}%


                    <div class='col-xs-6 col-sm-6'>
                        <div class='form-group ${hasErrors(bean: userInstance, field: 'signature', 'has-error')}'>
                            <label><g:message code="user.signature.label" default="Signature"/></label>
                            %{--<g:textArea name="signature" class="form-control" value="${userInstance?.signature}" rows="2" cols="40" maxlength="2000"/>--}%
                            <div class="sign-crop">
                                %{--<img src="${resource(dir: "resources/images/user", file: "saif_khan.jpg")}" alt="AuthUser Image">--}%
                                <img src="${applicationContext.springSecurityService?.currentUser?.signature ? resource(dir: "resources/images/user", file: "saif_khan.jpg") : (resource(dir: "resources/images/", file: "user_icon.png"))}" class="user-image" alt="AuthUser Image">
                            </div>
                            <g:renderErrors bean='userInstance' field='signature'/>
                        </div>
                    </div>

                    <div class='col-xs-6 col-sm-6'>
                        <div class='form-group'>
                            <label><g:message code="user.imagePreview.label" default="Preview"/></label>
                            %{--<g:textArea name="signature" class="form-control" value="${userInstance?.signature}" rows="2" cols="40" maxlength="2000"/>--}%
                            <div class="sign-preview sign-preview-sm"></div>
                            <g:renderErrors bean='userInstance' field='signature'/>
                        </div>
                    </div>

                </div>

                <div class="box-footer text-center">
                    <div class="btn-group">
                        <label title="Upload image file" class="btn btn-primary">
                            <input type="file" accept="image/*" name="file" id="inputSign" class="hide">
                            <i class="fa fa-upload" aria-hidden="true"></i>
                            <g:message code="user.uploadNewImage.label" default="Upload new image"/>
                        </label>
                        <button class="btn btn-primary" id="zoomIn2" type="button">
                            <i class="fa fa-search-plus" aria-hidden="true"></i>
                            <g:message code="user.zoomIn.label" default="Zoom In"/>
                        </button>
                        <button class="btn btn-primary" id="zoomOut2" type="button">
                            <i class="fa fa-search-minus" aria-hidden="true"></i>
                            <g:message code="user.zoomOut.label" default="Zoom Out"/>
                        </button>
                        <button class="btn btn-primary" id="rotateLeft2" type="button">
                            <i class="fa fa-rotate-left" aria-hidden="true"></i>
                            <g:message code="user.rotateLeft.label" default="Rotate Left"/>
                        </button>
                        <button class="btn btn-primary" id="rotateRight2" type="button">
                            <i class="fa fa-rotate-right" aria-hidden="true"></i>
                            <g:message code="user.rotateRight.label" default="Rotate Right"/>
                        </button>
                    </div>
                </div>      <!-- /.box-footer -->
            </div>
            <!--/.box -->
        </div>

    </div>

</fieldset>

<script type="text/javascript" src="${resource(dir: "resources/plugins/jQuery", file: "jquery.min.js")}"></script>
<script type="text/javascript" src="${resource(dir: "resources/plugins/cropper", file: "cropper.js")}"></script>
<script type="text/javascript">
    var $image = $(".image-crop > img");
    $($image).cropper({
//            aspectRatio: 1.618,   //original
//            aspectRatio: 1.50,
        aspectRatio: "auto",
        preview: ".img-preview",
        done: function (data) {
            // Output the result data for cropping image.
            alert("hhhhhh");
            alert(data);
        }
    });

    var $inputImage = $("#inputImage");
    if (window.FileReader) {
        $inputImage.change(function () {
            var fileReader = new FileReader(), files = this.files, file;
            if (!files.length) {
                return;
            }
            file = files[0];

            if (/^image\/\w+$/.test(file.type)) {
                fileReader.readAsDataURL(file);
                fileReader.onload = function () {
                    $inputImage.val("");
                    $image.cropper("reset", true).cropper("replace", this.result);
                };
            } else {
                showMessage("Please choose an image file.");
            }
        });
    } else {
        $inputImage.addClass("hide");
    }

    $("#zoomIn").click(function () {
        $image.cropper("zoom", 0.1);
    });

    $("#zoomOut").click(function () {
        $image.cropper("zoom", -0.1);
    });

    $("#rotateLeft").click(function () {
        $image.cropper("rotate", 90);
    });

    $("#rotateRight").click(function () {
        $image.cropper("rotate", -90);
    });
</script>


<script type="text/javascript">
    var $sign = $(".sign-crop > img")
    $($sign).cropper({
//            aspectRatio: 1.618,   //original
//            aspectRatio: 1.50,
        aspectRatio: "auto",
        preview: ".sign-preview",
        done: function (data) {
            // Output the result data for cropping image.
        }
    });

    var $inputSign = $("#inputSign");
    if (window.FileReader) {
        $inputSign.change(function () {
            var fileReader = new FileReader(),
                    files = this.files,
                    file;

            if (!files.length) {
                return;
            }
            file = files[0];

            if (/^image\/\w+$/.test(file.type)) {
                fileReader.readAsDataURL(file);
                fileReader.onload = function () {
                    $inputSign.val("");
                    $sign.cropper("reset", true).cropper("replace", this.result);
                };
            } else {
                showMessage("Please choose an image file.");
            }
        });
    } else {
        $inputSign.addClass("hide");
    }

    $("#zoomIn2").click(function () {
        $sign.cropper("zoom", 0.1);
    });

    $("#zoomOut2").click(function () {
        $sign.cropper("zoom", -0.1);
    });

    $("#rotateLeft2").click(function () {
        $sign.cropper("rotate", 90);
    });

    $("#rotateRight2").click(function () {
        $sign.cropper("rotate", -90);
    });
</script>
