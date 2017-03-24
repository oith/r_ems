package org.reflection.ems

import org.reflection.com.ComEducationInfo

class EmsGuardianEducationInfo extends ComEducationInfo{

    EmsGuardian emsGuardian

    static mapping = {
        table 'EMS_GUARDIAN_EDUCATION_INFO'
    }

    static constraints = {
        emsGuardian nullable: false
    }
}
