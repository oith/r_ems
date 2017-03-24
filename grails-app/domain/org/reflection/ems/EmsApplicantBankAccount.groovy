package org.reflection.ems

import org.reflection.com.ComBank

class EmsApplicantBankAccount {
    EmsApplicant emsApplicant

    String       accountTitle
    ComBank      comBank
    String       bankAccountNo

    static mapping = {
        table 'EMS_APLC_BNK_ACC'
    }

    static constraints = {
        emsApplicant  nullable: false
        accountTitle  nullable: false
        comBank       nullable: false
        bankAccountNo nullable: false
        //createdDate     nullable: false, display: false
        //createdBy       nullable: false, display: false

        //modifiedDate    nullable: true, display: false
        //modifiedBy      nullable: true, display: false
    }
}
