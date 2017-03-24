package org.reflection.ems

import org.reflection.com.ComPersonAdult

class EmsGuardian extends ComPersonAdult {

    Boolean isEmailNotification,
            isMobileNotification

    static hasMany = [
            emsGuardianEducationInfos: EmsGuardianEducationInfo,
            emsGuardianContactInfos  : EmsGuardianContactInfo,
            emsGuardianJobHistory    : EmsGuardianJobHistory
    ]

    static mapping = {
        table 'EMS_GUARDIAN'
    }

    static constraints = {
        //createdDate     nullable: false, display: false
        //createdBy       nullable: false, display: false

        //modifiedDate    nullable: true, display: false
        //modifiedBy      nullable: true, display: false
        isEmailNotification  nullable: true
        isMobileNotification nullable: true
    }
}
