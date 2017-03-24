package org.reflection.ems

/**
 * Created by hoshen.mahmud on 10-Mar-17.
 */
class EmsApplicantDocument {
    EmsApplicant     emsApplicant
    ApplicantDocType docType

    String           fileTitle,
                     filePath
    Boolean          isApproved
    Byte             shortOrder

    static mapping = {
        table 'EMS_APLC_DOC'
    }

    static constraints = {
        emsApplicant  nullable: false
        fileTitle     nullable: false
        filePath      nullable: false
        docType       nullable: false

        isApproved    nullable: true
        shortOrder    nullable: true
        //createdDate     nullable: false, display: false
        //createdBy       nullable: false, display: false

        //modifiedDate    nullable: true, display: false
        //modifiedBy      nullable: true, display: false
    }
}
