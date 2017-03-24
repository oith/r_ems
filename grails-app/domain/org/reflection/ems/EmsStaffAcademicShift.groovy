package org.reflection.ems

class EmsStaffAcademicShift {

    EmsStaffAcademic emsStaffAcademic
    EmsShift         emsShift

    static mapping = {
        table "EMS_STAFF_ACAD_SHIFT"
    }
    static constraints = {
        emsStaffAcademic nullable: false
        emsShift         nullable: false
    }

}
