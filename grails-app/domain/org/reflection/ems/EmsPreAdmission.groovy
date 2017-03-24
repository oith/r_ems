package org.reflection.ems

class EmsPreAdmission {
    EmsApplicant emsApplicant

    String  referredByInfo
    Float   testMarkVivaObtained,
            testMarkWrittenObtained,
            testMarkMcqObtained
    Byte    testMarkVivaTotal,
            testMarkWrittenTotal,
            testMarkMcqTotal

    Boolean isAttachmentSubmitted,
            isPaymentComplete,
            isChecked,
            isApproved,
            isPassedAtAdmissionTest,
            isReferredBy

    Date    applicationDate

    static mapping = {
        table 'EMS_PRE_ADMISSION'
    }

    static constraints = {
        //createdDate     nullable: false, display: false
        //createdBy       nullable: false, display: false

        //modifiedDate    nullable: true, display: false
        //modifiedBy      nullable: true, display: false
        emsApplicant              nullable: false
        isAttachmentSubmitted     nullable: false
        isPaymentComplete         nullable: false
        isChecked                 nullable: false
        isApproved                nullable: false
        applicationDate           nullable: false

        isPassedAtAdmissionTest   nullable: true
        testMarkVivaObtained      nullable: true
        testMarkWrittenObtained   nullable: true
        testMarkMcqObtained       nullable: true
        testMarkVivaTotal         nullable: true
        testMarkWrittenTotal      nullable: true
        testMarkMcqTotal          nullable: true
        isReferredBy              nullable: true
        referredByInfo            nullable: true
    }
}
