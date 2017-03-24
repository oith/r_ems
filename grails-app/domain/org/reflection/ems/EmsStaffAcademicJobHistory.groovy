package org.reflection.ems

import org.reflection.com.ComJobHistory

class EmsStaffAcademicJobHistory extends ComJobHistory{

    EmsStaffAcademic emsStaffAcademic

    static mapping = {
        table 'EMS_STAFF_ACAD_JOB_HISTORY'
    }

    static constraints = {
        emsStaffAcademic nullable: false
    }
}
