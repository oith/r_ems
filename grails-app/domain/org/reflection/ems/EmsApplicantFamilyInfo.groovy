package org.reflection.ems

import org.reflection.com.ComFamilyInfo

class EmsApplicantFamilyInfo extends ComFamilyInfo{
    EmsApplicant emsApplicant

    static mapping = {
        table "EMS_APLC_FAMILY_INFO"
    }

    static constraints = {
        emsApplicant nullable: false
    }
}
