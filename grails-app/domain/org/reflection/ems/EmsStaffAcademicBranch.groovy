package org.reflection.ems

import org.reflection.com.ComBranch

class EmsStaffAcademicBranch {
    EmsStaffAcademic emsStaffAcademic
    ComBranch        comBranch

    static mapping = {
        table 'EMS_STAFF_ACAD_BRANCH'
    }

    static constraints = {
        emsStaffAcademic nullable: false
        comBranch        nullable: true
    }
}
