package org.reflection.ems

import org.reflection.com.ComFamilyInfo

class EmsStudentFamilyInfo extends ComFamilyInfo{
    EmsStudent emsStudent

    static mapping = {
        table "EMS_STUDENT_FAMILY_INFO"
    }

    static constraints = {
        emsStudent nullable: false
    }
}
