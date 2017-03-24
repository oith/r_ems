package org.reflection.com

import grails.validation.Validateable
import org.reflection.auth.AuthUser

@Validateable
class ComDepartment {
    AuthUser createdBy,
             modifiedBy

    String   code,
             name,
             shortName,
             keyword,
             remarks
    Integer  sortOrder
    Boolean  isActive = true
    Date     createdDate = new Date(),
             modifiedDate

    static mapping = {
        version false
        table   'COM_DEPARTMENT'
    }

    static constraints = {
        name         nullable: false, size: 1..100, unique: true
        code         nullable: false, unique: true, size: 1..30
        createdBy    nullable: false, display: false
        createdDate  nullable: false, display: false

        remarks      nullable: true, size: 0..500
        shortName    nullable: true, size: 0..20
        modifiedBy   nullable: true, display: false
        modifiedDate nullable: true, display: false
        keyword      nullable: true
        sortOrder    nullable: true
        isActive     nullable: true
    }

    String toString() {
        return name
    }
}
