package org.reflection.ems

import org.reflection.com.ComPerson

class EmsApplicant extends ComPerson {
    EmsClass emsClass
    EmsQuota emsQuota
    EmsYear  emsYear

    String   code
    Date     admissionDate

    static hasMany = [
            emsApplicantBranchPreferance: EmsApplicantBranchPreference,
            emsApplicantEducationInfo   : EmsApplicantEducationInfo,
            emsApplicantBankAccount     : EmsApplicantBankAccount,   //Student are eligible for this service
            emsApplicantDocument        : EmsApplicantDocument,
    ]

    static mapping = {
        tablePerConcreteClass(true)
        table   'EMS_APPLICANT'
    }

    static constraints = {
        emsClass      nullable: false
        emsYear       nullable: false
        code          nullable: false
        admissionDate nullable: false

        emsQuota      nullable: true
        //createdDate     nullable: false, display: false
        //createdBy       nullable: false, display: false

        //modifiedDate    nullable: true, display: false
        //modifiedBy      nullable: true, display: false
    }

    @Override
    String toString() {
        return fullName
    }
}
