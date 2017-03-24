package org.reflection.ems

import org.reflection.com.ComContactPerson

class EmsStaffAcademicContactPerson extends ComContactPerson {

    EmsStaffAcademic emsStaffAcademic

    static mapping = {
        table "EMS_STAFF_ACAD_CONTACT_PERSON"
    }

    static constraints = {
        emsStaffAcademic nullable: true
    }
}
