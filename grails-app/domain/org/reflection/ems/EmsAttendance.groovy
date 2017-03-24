package org.reflection.ems

class EmsAttendance {
    EmsStudent  emsStudent
    EmsAttnType emsAttnType

    Date        attnDate

    static mapping = {
        table 'EMS_ATTENDANCE'
    }

    static constraints = {
        //createdDate     nullable: false, display: false
        //createdBy       nullable: false, display: false

        //modifiedDate    nullable: true, display: false
        //modifiedBy      nullable: true, display: false
        emsStudent  nullable: false
        emsAttnType nullable: false
        attnDate    nullable: false
    }
}
