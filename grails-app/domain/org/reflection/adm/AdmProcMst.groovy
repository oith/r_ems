package org.reflection.adm
/**
 * The AdmProcMst entity.
 * @author : Mohammad Badiuzzaman
 * @date : Thu Apr 04 14:04:20 BDT 2013
 */
class AdmProcMst extends AdmPermissible {

    String cmd,
           frqncyType,
           procTables,
           runModeType,
           runWith

    static mapping = {
        version     false
        table       'ADM_PROC_MST'
        //admProcDtls sort: 'zoneType', 'sortingOrder', order: 'asc', 'asc'
    }

    static hasMany = [admProcDtl: AdmProcDtl]

    static constraints = {
        frqncyType  nullable: true, size: 0..20
        runWith     nullable: true, size: 0..30
        runModeType nullable: true, size: 0..50
        procTables  nullable: true, size: 0..2000
        cmd         nullable: true, size: 0..4000
    }
}