package org.reflection.adm
/**
 * The AdmRptDtl entity.
 * @author : Mohammad Badiuzzaman
 * @date : Thu Apr 04 14:04:20 BDT 2013
 */
class AdmRptDtl {

    AdmParam  admParam
    AdmRptMst admRptMst

    Byte      sortingOrder
    String    cmd,
              defaultVal,
              helpText,
              paramName,
              paramType,
              title
    Boolean   isActive,
              isMandatory

    static mapping = {
        version   false
        table     'ADM_RPT_DTL'
        admRptMst column: 'ADM_RPT_MST_ID'
        admParam  column: 'ADM_PARAM_ID'
    }

    static constraints = {
        admRptMst    nullable: false

        isActive     nullable: true, size: 0..1
        isMandatory  nullable: true, size: 0..1
        sortingOrder nullable: true, size: 0..3
        admParam     nullable: true, size: 0..19
        paramType    nullable: true, size: 0..20
        paramName    nullable: true, size: 0..30
        title        nullable: true, size: 0..256
        cmd          nullable: true, size: 0..1000
        defaultVal   nullable: true, size: 0..1000
        helpText     nullable: true, size: 0..1000
    }

    String toString() {
        return title
    }
}