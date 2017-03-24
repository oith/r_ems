package org.reflection.com

class ComEducationInfo {

    ComLookup comLookupEduSubGroup,
              comLookupEducation

    String    organization,
              remarks,
              result,
              resultOutOf
    Integer   passingYear,
              sortingOrder,
              yearFrom,
              yearTo

    static mapping = {
        version false
        table   'COM_EDUCATION_INFO'
        tablePerConcreteClass(true)
    }

    static constraints = {
        comLookupEduSubGroup nullable: false
        comLookupEducation   nullable: false
        organization         nullable: false
        result               nullable: false
        resultOutOf          nullable: false
        passingYear          nullable: false

        remarks              nullable: true
        sortingOrder                 nullable: true
        yearFrom             nullable: true
        yearTo               nullable: true
    }
}
