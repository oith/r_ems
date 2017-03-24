package org.reflection.com

class ComFamilyInfo {

    ComLookup        comLookupRefRelation
    ComMaritalStatus comMaritalStatus
    ComProfession    comProfession

    String           email,
                     mobile,
                     phone,
                     picPath,
                     remarks,
                     title,
                     titleDept,
                     titleJob,
                     titleNative,
                     titleOrg
    Integer          monthlySalary,
                     sortingOrder
    Date             dob

    static mapping = {
        version false
        table   'COM_FAMILY_INFO'
        tablePerConcreteClass(true)
    }

    static constraints = {
        comMaritalStatus     nullable: false
        mobile               nullable: false
        title                nullable: false

        comLookupRefRelation nullable: true
        comProfession        nullable: true
        email                nullable: true
        phone                nullable: true
        picPath              nullable: true
        remarks              nullable: true
        titleDept            nullable: true
        titleJob             nullable: true
        titleNative          nullable: true
        titleOrg             nullable: true
        monthlySalary        nullable: true
        sortingOrder                 nullable: true
        dob                  nullable: true
    }
}
