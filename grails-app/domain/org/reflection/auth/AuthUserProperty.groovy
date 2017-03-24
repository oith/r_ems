package org.reflection.auth

class AuthUserProperty {
    AuthUser     authUser,
                 createdBy,
                 modifiedBy
    AuthMenuType authMenuType = AuthMenuType.LEFT

    String       remarks
    Boolean      isActive    = true
    Date         createdDate = new Date(),
                 modifiedDate

    static mapping = {
        version      true
        table        'AUTH_USER_PROPERTY'
        createdBy    column: 'CREATED_BY_ID'
        createdDate  column: 'CREATED_DATE'
        modifiedBy   column: 'MODIFIED_BY_ID'
        modifiedDate column: 'MODIFIED_DATE'
    }

    static constraints = {
        authMenuType nullable: false
        authUser     nullable: false, unique: true
        createdBy    nullable: false, display: false
        createdDate  nullable: false, display: false

        remarks      nullable: true, size: 0..500
        isActive     nullable: true, size: 1
        modifiedBy   nullable: true, display: false
        modifiedDate nullable: true, display: false
    }
}
