package org.reflection.ems

class EmsAdmissionFormFeeCollection {

    String  formNo,
            applicantName,
            guardianName,
            remarks
    Integer amount
    Date    appDate

    static mapping = {
        version false
        table "EMS_ADM_FORM_FEE_COLLECTION"
    }

    static constraints = {
        formNo        nullable: false, size: 0..11
        applicantName nullable: false, size: 0..30
        guardianName  nullable: true,  size: 0..30
        amount        nullable: false, size: 0..4
        remarks       nullable: true,  size: 0..500
        appDate       nullable: false
    }

    @Override
    String toString() {
        return formNo
    }
}
