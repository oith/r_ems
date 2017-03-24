package org.reflection.com

import grails.validation.Validateable
import org.reflection.auth.AuthUser

@Validateable
class ComDesignation {
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
        table   'COM_DESIGNATION'
    }

    static constraints = {
        createdBy    nullable: false, display: false
        createdDate  nullable: false, display: false
        name         nullable: false, size: 1..100, unique: true
        code         nullable: false, unique: true, size: 1..30

        keyword      nullable: true
        sortOrder    nullable: true
        isActive     nullable: true
        shortName    nullable: true, size: 0..20
        remarks      nullable: true, size: 0..500
        modifiedBy   nullable: true, display: false
        modifiedDate nullable: true, display: false
    }

    String toString() {
        return name
    }
}
