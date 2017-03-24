package org.reflection.com

class ComJobHistory {

    String  department,
            job,
            jobDuration,
            organization,
            reasonForLeave,
            responsibility
    Integer sortOrder
    Date    endDate,
            startDate

    static mapping = {
        version false
        table  'COM_JOB_HISTORY'
        tablePerConcreteClass(true)
    }

    static constraints = {
        department     nullable: false
        job            nullable: false
        jobDuration    nullable: false
        organization   nullable: false

        reasonForLeave nullable: true
        responsibility nullable: true
        sortOrder      nullable: true
        endDate        nullable: true
        startDate      nullable: true
    }
}
