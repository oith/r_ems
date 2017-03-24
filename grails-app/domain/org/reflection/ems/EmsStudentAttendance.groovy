package org.reflection.ems

class EmsStudentAttendance {
    EmsStudent        emsStudent
    EmsAttendanceType attendanceType
    EmsStaffAcademic  emsStaffAcademic
    Date              attendanceDate

    static mapping = {
        table 'EMS_STUDENT_ATTENDANCE'
    }

    static constraints = {
        //createdDate     nullable: false, display: false;
        //createdBy       nullable: false, display: false;

        //modifiedDate    nullable: true, display: false;
        //modifiedBy      nullable: true, display: false;

        emsStudent       nullable: false
        attendanceType   nullable: false
        emsStaffAcademic nullable: false
        attendanceDate   nullable: false
    }
}
