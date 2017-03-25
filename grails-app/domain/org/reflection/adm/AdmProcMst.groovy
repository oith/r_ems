package org.reflection.adm
/**
 * The AdmProcMst entity.
 * @author : Mohammad Badiuzzaman
 * @date : Thu Apr 04 14:04:20 BDT 2013
 */
class AdmProcMst {

    AdmProcMst parentAdmProcMst
    Byte sortingOrder
    String code,
           title,
           remarks,
           itemType;
    Boolean isActive;
    String cmd,
           frqncyType,
           procTables,
           runModeType,
           runWith

    static mapping = {
        version false
        table 'ADM_PROC_MST'
        parentAdmProcMst column: 'PARENT_ID'
        //admProcDtls sort: 'zoneType', 'sortingOrder', order: 'asc', 'asc'
    }

    static hasMany = [admProcDtl: AdmProcDtl, admProcMst: AdmProcMst]

    static constraints = {
        title nullable: false, size: 0..100
        itemType nullable: false, size: 0..3
        code nullable: false, size: 0..30, unique: true

        parentAdmProcMst nullable: true
        isActive nullable: true, size: 0..1
        sortingOrder nullable: true, size: 0..3
        remarks nullable: true, size: 0..500
        frqncyType nullable: true, size: 0..20
        runWith nullable: true, size: 0..30
        runModeType nullable: true, size: 0..50
        procTables nullable: true, size: 0..2000
        cmd nullable: true, size: 0..4000
    }
}