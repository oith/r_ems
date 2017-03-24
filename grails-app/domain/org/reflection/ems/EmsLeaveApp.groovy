package org.reflection.ems

class EmsLeaveApp {
    EmsStudent emsStudent

    String     reason
    Date       startDate,
               endDate

    static mapping = {
        table 'EMS_LEAVE_APP'
    }

    static constraints = {
        //createdDate     nullable: false, display: false
        //createdBy       nullable: false, display: false

        //modifiedDate    nullable: true, display: false
        //modifiedBy      nullable: true, display: false

        emsStudent nullable: false
        reason     nullable: false
        startDate  nullable: false
        endDate    nullable: false
    }
}
