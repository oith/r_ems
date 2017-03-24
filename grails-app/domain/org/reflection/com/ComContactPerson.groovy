package org.reflection.com

class ComContactPerson {

    ComContactPersonType comContactPersonType
    ComLookup            comLookupRefRelation
    ComMaritalStatus     comMaritalStatus
    ComProfession        comProfession

    String               addressPermanent,
                         addressPermanentNetive,
                         addressPresent,
                         addressPresentNetive,
                         birthPlace,
                         email,
                         mobile,
                         phone,
                         picPath,
                         portion,
                         remarks,
                         title,
                         titleNetive,
                         titleDept,
                         titleJob,
                         titleOrg
    Integer              monthlySalary,
                         sortingOrder
    Date                 dob

    static mapping = {
        version false
        table   'COM_CONTACT_PERSON'
        tablePerConcreteClass(true)
    }

    static constraints = {
        comContactPersonType   nullable: false
        comMaritalStatus       nullable: false
        addressPermanent       nullable: false
        mobile                 nullable: false
        title                  nullable: false

        comLookupRefRelation   nullable: true
        comProfession          nullable: true
        addressPermanentNetive nullable: true
        addressPresent         nullable: true
        addressPresentNetive   nullable: true
        birthPlace             nullable: true
        email                  nullable: true
        phone                  nullable: true
        picPath                nullable: true
        portion                nullable: true
        remarks                nullable: true
        titleNetive            nullable: true
        titleDept              nullable: true
        titleJob               nullable: true
        titleOrg               nullable: true
        monthlySalary          nullable: true
        sortingOrder                   nullable: true
        dob                    nullable: true
    }
}
