package org.reflection.auth

class AuthLandingPage {
    AuthUser createdBy,
             modifiedBy
    AuthRole authRole

    String   pageUrl,
             remarks
    Boolean  isActive    = true
    Date     createdDate = new Date(),
             modifiedDate

    static mapping = {
        version              false
        table                'AUTH_LANDING_PAGE'
        createdBy    column: 'CREATED_BY_ID'
        createdDate  column: 'CREATED_DATE'
        modifiedBy   column: 'MODIFIED_BY_ID'
        modifiedDate column: 'MODIFIED_DATE'
    }

    static constraints = {
        createdBy    nullable: false, display: false
        createdDate  nullable: false, display: false
        pageUrl      nullable: false, unique: ["authRole"], size: 0..2000
        authRole     nullable: false

        isActive     nullable: true
        remarks      nullable: true, size: 0..500
        modifiedBy   nullable: true, display: false
        modifiedDate nullable: true, display: false
    }

    String toString() {
        return authRole + " : " + pageUrl
    }
}
