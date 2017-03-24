package org.reflection.com
/**
 * Created by hoshen.mahmud on 10-Mar-17.
 */
class ComBranch {
    ComLocation comLocation

    String      code,
                name,
                address

    static mapping = {
        table   'COM_BRANCH'
    }

    static constraints = {
        comLocation nullable: false
        code        nullable: false
        name        nullable: false
        address     nullable: false
    }
}