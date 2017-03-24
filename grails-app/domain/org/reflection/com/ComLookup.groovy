package org.reflection.com

import org.reflection.auth.AuthUser

class ComLookup {
    ComLookupType comLookupType
    AuthUser      createdBy,
                  modifiedBy

    String        title,
                  keyword
    Integer       sortOrder
    Boolean       isActive = true
    Date          createdDate = new Date(),
                  modifiedDate

    static mapping = {
        version false
        table   'COM_LOOKUP'
    }

    static constraints = {
        title         nullable: false, size: 1..50, unique: ["comLookupType"]
        keyword       nullable: false, size: 0..30, unique: ["comLookupType"]
        createdBy     nullable: false, display: false
        createdDate   nullable: false, display: false

        comLookupType nullable: false, size: 1..30
        sortOrder     nullable: true, size: 0..4
        isActive      nullable: true
        modifiedBy    nullable: true, display: false
        modifiedDate  nullable: true, display: false
    }

    String toString() {
        return title
    }
}
