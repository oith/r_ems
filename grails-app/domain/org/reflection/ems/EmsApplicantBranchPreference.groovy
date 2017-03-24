package org.reflection.ems

import org.reflection.com.ComBranch

/**
 * Created by hoshen.mahmud on 10-Mar-17.
 */
class EmsApplicantBranchPreference {
    EmsApplicant emsApplicant
    ComBranch    comBranch
    ComPriority  comPriority

    static mapping = {
        table 'EMS_APLC_BRANCH_PREF'
    }

    static constraints = {
        //createdDate     nullable: false, display: false
        //createdBy       nullable: false, display: false

        //modifiedDate    nullable: true, display: false
        //modifiedBy      nullable: true, display: false
        emsApplicant nullable: true
        comBranch    nullable: true
        comPriority  nullable: true
    }
}
