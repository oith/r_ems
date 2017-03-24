package org.reflection.auth

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@EqualsAndHashCode(includes = 'authority')
@ToString(includes = 'authority', includeNames = true, includePackage = false)
class AuthRole implements Serializable {

    //private static final long serialVersionUID = 1
    AuthUser createdBy,
             modifiedBy

    String   authority,
             description
    Boolean  isActive    = true
    Date     createdDate = new Date(),
             modifiedDate

    AuthRole(String authority) {
        this()
        this.authority = authority
    }

    static mapping = {
        cache        true
        table        'AUTH_ROLE'
        createdBy    column: 'CREATED_BY_ID'
        createdDate  column: 'CREATED_DATE'
        modifiedBy   column: 'MODIFIED_BY_ID'
        modifiedDate column: 'MODIFIED_DATE'
    }

    static constraints = {
        authority    nullable: false, unique: true
        isActive     nullable: false

        createdBy    nullable: true, display: false
        createdDate  nullable: true, display: false
        description  nullable: true, size: 0..255
        modifiedBy   nullable: true, display: false
        modifiedDate nullable: true, display: false
    }
}
