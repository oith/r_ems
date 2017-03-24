package org.reflection.ems

class EmsFeeCollection {
    EmsStudent  emsStudent
    EmsTypeFee  emsFeeType

    String      remarks
    Double      amount
    Date        collectionDate

    static mapping = {
        table 'EMS_FEE_COLLECTION'
    }

    static constraints = {
        //createdDate     nullable: false, display: false
        //createdBy       nullable: false, display: false

        //modifiedDate    nullable: true, display: false
        //modifiedBy      nullable: true, display: false

        emsStudent     nullable: false
        emsFeeType     nullable: false

        remarks        nullable: true
        amount         nullable: true
        collectionDate nullable: true
    }
}
