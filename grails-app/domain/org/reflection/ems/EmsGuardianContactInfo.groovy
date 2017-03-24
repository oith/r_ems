package org.reflection.ems

import org.reflection.com.ComContactInfo

class EmsGuardianContactInfo extends ComContactInfo{

    EmsGuardian emsGuardian

    static mapping = {
        table 'EMS_GUARDIAN_CONTACT_INFO'
    }

    static constraints = {
        emsGuardian nullable: false
    }
}
