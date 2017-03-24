package org.reflection.ems

class EmsStaffAcademicClass {

    EmsStaffAcademic emsStaffAcademic
    EmsClass         emsClass

    static mapping = {
        table "EMS_STAFF_ACAD_CLASS"
    }

    static constraints = {
        emsStaffAcademic nullable: false
        emsClass         nullable: false
    }
}
