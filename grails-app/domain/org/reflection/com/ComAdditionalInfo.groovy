package org.reflection.com

class ComAdditionalInfo {

    //Alkp alkpDrvngLcnsType
    //Alkp alkpPpIssueCntry
    String  agreement,
            computerLiteracy,
            drivingLicenceNo,
            nationalIdIssuePlace,
            passportIssuePlace,
            passportNo,
            passportTitle,
            remarks,
            visaNo,
            workPermitNo

    Boolean isWorkPermitExist
    Date    drivingLicenceExpDate,
            drivingLicenceIssueDate,
            nationalIdIssueDate,
            passportExpDate,
            passportIssueDate,
            visaExpDate,
            visaIssueDate,
            workPermitExpDate,
            workPermitIssueDate


    static mapping = {
        version false
        table 'COM_ADDITIONAL_INFO'
    }

    static constraints = {
        agreement               nullable: true
        computerLiteracy        nullable: true
        drivingLicenceExpDate   nullable: true
        drivingLicenceIssueDate nullable: true
        drivingLicenceNo        nullable: true
        isWorkPermitExist       nullable: true
        nationalIdIssueDate     nullable: true
        nationalIdIssuePlace    nullable: true
        passportExpDate         nullable: true
        passportIssueDate       nullable: true
        passportIssuePlace      nullable: true
        passportNo              nullable: true
        passportTitle           nullable: true
        remarks                 nullable: true
        visaExpDate             nullable: true
        visaIssueDate           nullable: true
        visaNo                  nullable: true
        workPermitExpDate       nullable: true
        workPermitIssueDate     nullable: true
        workPermitNo            nullable: true
    }
}
