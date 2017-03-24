package org.reflection.ems

class EmsStaffAcademicTypeEducation {

    EmsStaffAcademic emsStaffAcademic
    EmsTypeEducation emsTypeEducation

    static mapping = {
        table "EMS_STAFF_ACAD_TYPE_EDU"
    }

    static constraints = {
        emsStaffAcademic nullable: false
        emsTypeEducation nullable: false
    }
}
