package org.reflection.adm

class AdmRptFormat {
    AdmRptMst    admRptMst
    ReportFormat reportFormat

    static constraints = {
        admRptMst    nullable: false
        reportFormat nullable: false
    }
}
