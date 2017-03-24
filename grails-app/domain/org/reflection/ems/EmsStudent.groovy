package org.reflection.ems

class EmsStudent extends EmsApplicant {
    EmsApplicant emsApplicant

    static hasMany = [
            //hrCrEmpHlthMdctns     : HrCrEmpHlthMdctn, //Future Plan.
            emsStudentGuardians: EmsStudentGuardian,
            emsStudentFingerPrints :EmsStudentFingerPrint
    ]

    static mapping = {
        table 'EMS_STUDENT'
        tablePerConcreteClass(true)
    }

    static constraints = {
        //createdDate     nullable: false, display: false;
        //createdBy       nullable: false, display: false;

        //modifiedDate    nullable: true, display: false;
        //modifiedBy      nullable: true, display: false;
        emsApplicant nullable: false
    }
}
