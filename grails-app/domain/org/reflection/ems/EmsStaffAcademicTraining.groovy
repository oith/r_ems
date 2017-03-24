package org.reflection.ems

import org.reflection.com.ComTraining

class EmsStaffAcademicTraining extends ComTraining{

    EmsStaffAcademic emsStaffAcademic

    static mapping = {
        table 'EMS_STAFF_ACAD_TRAINING'
    }

    static constraints = {
        emsStaffAcademic nullable: false
    }
}
