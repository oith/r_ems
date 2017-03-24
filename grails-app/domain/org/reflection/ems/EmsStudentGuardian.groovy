package org.reflection.ems

/**
 * Created by hoshen.mahmud on 09-Mar-17.
 */
class EmsStudentGuardian {
    EmsStudent      emsStudent
    EmsGuardian     emsGuardian
    EmsGuardianType emsGuardianType

    static mapping = {
        table 'EMS_STUDENT_GUARDIAN'
    }

    static constraints = {
        emsStudent      nullable: false
        emsGuardian     nullable: false
        emsGuardianType nullable: false
    }
}
