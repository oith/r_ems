package org.reflection.ems

class EmsMarks {
    EmsStaffAcademic emsStaffAcademic
    EmsClass         emsClass
    EmsStudent       emsStudent
    EmsSubject       emsSubject
    EmsTypeExam      emsTypeExam
    EmsYear          emsYear

    String           remarks
    Float            marks

    static mapping = {
        table 'EMS_MARKS'
    }

    static constraints = {
        //createdDate     nullable: false, display: false
        //createdBy       nullable: false, display: false

        //modifiedDate    nullable: true, display: false
        //modifiedBy      nullable: true, display: false

        emsStaffAcademic nullable: false
        emsClass         nullable: false
        emsStudent       nullable: false
        emsSubject       nullable: false
        emsTypeExam      nullable: false
        emsYear          nullable: false
        marks            nullable: false

        remarks          nullable: true
    }
}
