package org.reflection.ems

import org.reflection.com.ComBranch

class EmsRegistration {
    EmsRegistrationType emsRegistrationType
    EmsStudent          emsStudent
    EmsClass            emsClass
    EmsSection          emsSection
    EmsShift            emsShift
    EmsYear             emsYear
    ComBranch           comBranch

    String              roll
    Date                admissionDate
    Boolean             isActive

    static mapping = {
        table 'EMS_REGISTRATION'
    }

    static constraints = {
        //createdDate     nullable: false, display: false
        //createdBy       nullable: false, display: false

        //modifiedDate    nullable: true, display: false
        //modifiedBy      nullable: true, display: false
        emsRegistrationType nullable: false
        roll                nullable: false
        emsStudent          nullable: false
        admissionDate       nullable: false
        emsClass            nullable: false
        emsShift            nullable: false
        emsYear             nullable: false
        
        comBranch           nullable: true
        emsSection          nullable: true
    }
}
