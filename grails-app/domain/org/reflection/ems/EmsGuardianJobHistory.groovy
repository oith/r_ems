package org.reflection.ems

import org.reflection.com.ComJobHistory

class EmsGuardianJobHistory extends ComJobHistory{

    EmsGuardian emsGuardian

    static mapping = {
        table 'EMS_GUARDIAN_JOB_HISTORY'
    }

    static constraints = {
        emsGuardian nullable: false
    }
}
