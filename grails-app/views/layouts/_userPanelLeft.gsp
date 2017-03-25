<!-- Sidebar user panel -->
<div class="user-panel">
    <div class="pull-left image">
        %{--<img src="${resource(dir: "resources/images/user", file: "saif_khan.jpg")}" class="img-circle" alt="User Image">--}%
        %{--<img src="${resource(dir: "resources/images/", file: "biman_logo.png")}" class="img-circle" alt="User Image">--}%
        <img src="${applicationContext.springSecurityService?.currentUser?.username == "saif_hmk" ? resource(dir: "resources/images/user", file: "saif_khan.jpg") : (resource(dir: "resources/images/", file: "user_icon.jpg"))}" class="img-circle" alt="User Image">
    </div>

    <div class="pull-left info">
        <p>${applicationContext.springSecurityService?.currentUser?.displayName}</p>
        <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
    </div>
</div>