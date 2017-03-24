package org.reflection.ems

import org.reflection.com.ComEducationInfo

/**
 * Created by hoshen.mahmud on 10-Mar-17.
 */
class EmsStudentEducationInfo extends ComEducationInfo {
    EmsStudent emsStudent

    static mapping = {
        table 'EMS_STUDENT_EDUCATION_INFO'
    }

    static constraints = {
        emsStudent nullable: false
    }
}
