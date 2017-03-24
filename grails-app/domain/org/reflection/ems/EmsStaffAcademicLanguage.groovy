package org.reflection.ems

import org.reflection.com.ComLanguage

class EmsStaffAcademicLanguage extends ComLanguage{

    EmsStaffAcademic emsStaffAcademic

    static mapping = {
        table 'EMS_STAFF_ACAD_LANGUAGE'
    }

    static constraints = {
        emsStaffAcademic  nullable: false
    }
}
