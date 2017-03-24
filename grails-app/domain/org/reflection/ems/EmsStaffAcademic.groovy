package org.reflection.ems

import org.reflection.hr.HrStaff

class EmsStaffAcademic extends HrStaff {
    static hasMany = [
            emsStaffAcademicTrainings     : EmsStaffAcademicTraining,
            emsStaffAcademicLanguages     : EmsStaffAcademicLanguage,
            emsStaffAcademicEducationInfos: EmsStaffAcademicEducationInfo,
            emsStaffAcademicContactInfos  : EmsStaffAcademicContactInfo,
            emsStaffAcademicJobHistorys   : EmsStaffAcademicJobHistory,
            emsStaffAcademicContactPersons: EmsStaffAcademicContactPerson,
            emsStaffAcademicBranchs       : EmsStaffAcademicBranch,
            emsStaffAcademicTypeEducations: EmsStaffAcademicTypeEducation,
            emsStaffAcademicShifts        : EmsStaffAcademicShift,
            emsStaffAcademicClasss        : EmsStaffAcademicClass,
            emsStaffAcademicSubjects      : EmsStaffAcademicSubject
    ]

    static mapping = {
        table 'EMS_STAFF_ACAD'
    }

    static constraints = {
        //createdDate     nullable: false, display: false
        //createdBy       nullable: false, display: false

        //modifiedDate    nullable: true, display: false
        //modifiedBy      nullable: true, display: false
    }
}
