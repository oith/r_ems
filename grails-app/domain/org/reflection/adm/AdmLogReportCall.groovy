/**
 * The AdmLogReportCall entity.
 * @author: Mohammad Badiuzzaman
 */
package org.reflection.adm

import org.reflection.auth.AuthUser

class AdmLogReportCall {

    AdmRptMst    admRptMst
    AuthUser     authUser
    ReportFormat reportFormat

    String       errMsg,
                 paramMap,
                 reportFileName,
                 status,
                 terminalIp
    Long         genMs
    Integer      reportSize
    Date         trnscTime


    static mapping = {
        version   false
        table     'ADM_LOG_REPORT_CALL'
        id        generator: 'sequence', params: [sequence: 'ADM_LOG_SEQUENCE']
        admRptMst column: 'ADM_RPT_MST_ID'
        authUser  column: 'ADM_USER_ID'
    }

    static constraints = {
        trnscTime       nullable: false
        authUser        nullable: false
        admRptMst       nullable: false
        reportFileName  nullable: false, size: 0..100
        status          nullable: false, size: 0..20
        genMs           nullable: false, size: 0..22

        reportSize      nullable: true, size: 0..12
        reportFormat    nullable: true, size: 0..10
        paramMap        nullable: true, size: 0..4000
        errMsg          nullable: true, size: 0..4000
        terminalIp      nullable: true, size: 0..50
    }

    AdmLogReportCall() {}

    AdmLogReportCall(Date trnscTime, AuthUser authUser, AdmRptMst admRptMst, String reportFileName, String status, Integer genMs) {
        this.trnscTime      = trnscTime
        this.authUser       = authUser
        this.admRptMst      = admRptMst
        this.reportFileName = reportFileName
        this.status         = status
        this.genMs          = genMs
    }
}
