package org.reflection.adm

class AdmRptMst extends AdmPermissible {
    String fileName

    static hasMany = [admRptDtl: AdmRptDtl, admRptFormat: AdmRptFormat]

    static mapping = {
        version false
        table   'ADM_RPT_MST'
    }

    static constraints = {
        fileName nullable: true, size: 0..128
    }

}