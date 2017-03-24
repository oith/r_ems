package org.reflection.auth

class AuthMenu {
    def menuService
    AuthUser     createdBy,
                 modifiedBy
//    AuthMenuType authMenuType = AuthMenuType.LEFT
    String       authMenuType = "LEFT"
    AuthMenu     parentMenu

    String       url,
                 code,
                 title,
                 toolTip,
                 description,
                 menuIcon     = "fa fa-circle-o"
    Integer      sortOrder
    Boolean      isActive     = true,
                 isOpenNewTab = false,
                 isExternal   = false
    Date         createdDate  = new Date(),
                 modifiedDate

    static mapping = {
        table        'AUTH_MENU'
        sort         title: "asc" // or "desc"
        parentMenu   column: 'PARENT_MENU_ID'
        createdBy    column: 'CREATED_BY_ID'
        createdDate  column: 'CREATED_DATE'
        modifiedBy   column: 'MODIFIED_BY_ID'
        modifiedDate column: 'MODIFIED_DATE'
    }

    static constraints = {
        title        nullable: false
        isActive     nullable: false
        url          nullable: false, unique: true
        createdBy    nullable: false, display: false
        createdDate  nullable: false, display: false
        authMenuType nullable: false, inList: ['ALL', 'NONE', 'LEFT', 'TOP_TREE', 'TOP_MEGA', 'LEFT_TOP_TREE', 'LEFT_TOP_MEGA', 'LEFT_NONE', 'TOP_TREE_TOP_MEGA', 'TOP_MEGA_NONE', 'TOP_TREE_NONE', 'LEFT_TOP_TREE_NONE', 'LEFT_TOP_MEGA_NONE', 'TOP_TREE_TOP_MEGA_NONE']
//        authMenuType nullable: false//, inList: menuService.getMenuTypeList();

        parentMenu   nullable: true
        isExternal   nullable: true
        isOpenNewTab nullable: true
        toolTip      nullable: true
        sortOrder    nullable: true
        code         nullable: true, size: 1..4, unique: true
        menuIcon     nullable: true, size: 1..50
        description  nullable: true, size: 1..250
        modifiedBy   nullable: true, display: false
        modifiedDate nullable: true, display: false
    }

    String toString() {
        return title
    }
}
