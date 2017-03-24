package org.reflection.ems

import org.reflection.com.ComEducationInfo

class EmsStaffAcademicEducationInfo extends ComEducationInfo{

    EmsStaffAcademic emsStaffAcademic

    static mapping = {
        table "EMS_STAFF_ACAD_EDU_INFO"
    }

    static constraints = {
        emsStaffAcademic nullable: false
    }
}
