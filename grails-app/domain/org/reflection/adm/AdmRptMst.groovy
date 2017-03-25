package org.reflection.adm

class AdmRptMst {

    AdmRptMst parentAdmRptMst

    Byte sortingOrder
    String code,
           title,
           remarks,
           itemType;
    Boolean isActive;
    String fileName

    static hasMany = [admRptDtl: AdmRptDtl, admRptFormat: AdmRptFormat, admRptMst: AdmRptMst]

    static mapping = {
        version false
        table 'ADM_RPT_MST'
        parentAdmRptMst column: 'PARENT_ID'
    }

    static constraints = {
        title nullable: false, size: 0..100
        itemType nullable: false, size: 0..3
        code nullable: false, size: 0..30, unique: true

        parentAdmRptMst nullable: true
        isActive nullable: true, size: 0..1
        sortingOrder nullable: true, size: 0..3
        remarks nullable: true, size: 0..500
        fileName nullable: true, size: 0..128
    }

}