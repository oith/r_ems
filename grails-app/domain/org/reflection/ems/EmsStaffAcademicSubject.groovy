package org.reflection.ems

class EmsStaffAcademicSubject {

    EmsStaffAcademic emsStaffAcademic
    EmsSubject       emsSubject

    static mapping = {
        table 'EMS_STAFF_ACAD_SUBJECT'
    }

    static constraints = {
        emsStaffAcademic nullable: false
        emsSubject       nullable: false
    }
}
