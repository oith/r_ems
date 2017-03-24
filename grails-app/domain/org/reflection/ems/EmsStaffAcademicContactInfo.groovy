package org.reflection.ems

import org.reflection.com.ComContactInfo

class EmsStaffAcademicContactInfo extends ComContactInfo{

    EmsStaffAcademic emsStaffAcademic

    static mapping = {
        table "EMS_STAFF_ACAD_CONTACT_INFO"
    }

    static constraints = {
        emsStaffAcademic nullable: false
    }
}
