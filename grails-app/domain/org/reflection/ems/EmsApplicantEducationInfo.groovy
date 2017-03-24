package org.reflection.ems

/**
 * Created by hoshen.mahmud on 10-Mar-17.
 */
class EmsApplicantEducationInfo {
    EmsEducationBoard emsEducationBoard
    EmsApplicant      emsApplicant
    EmsGroup          emsGroup
    EmsClass          emsClass

    String            titleOfInstitute,
                      remarks
    Integer           passingYear
    Byte              result,
                      resultOutOf,
                      sortOrder

    static mapping = {
        table 'EMS_APLC_EDU_INFO'
    }

    static constraints = {
        emsApplicant      nullable: false
        emsClass          nullable: false
        titleOfInstitute  nullable: false
        passingYear       nullable: false
        result            nullable: false
        resultOutOf       nullable: false

        emsEducationBoard nullable: true
        emsGroup          nullable: true
        sortOrder         nullable: true
        remarks           nullable: true
        //createdDate     nullable: false, display: false
        //createdBy       nullable: false, display: false

        //modifiedDate    nullable: true, display: false
        //modifiedBy      nullable: true, display: false
    }
}
