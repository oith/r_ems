/**
 * The ProcSts entity.
 * @author: Mohammad Badiuzzaman
 */
package org.reflection.adm

import org.reflection.auth.AuthUser

class AdmProcSts {

    AuthUser authUser
    String   outMessage,
             params,
             procTitle,
             sqlError,
             status
    Integer  donePct,
             donePctSub,
             outResult,
             remainPct,
             remainPctSub
    Date     endTime,
             startTime

    static mapping = {
        version  false
        table    'ADM_LOG_PROC_CALL'
        sqlError column: 'OUT_SQLERRM'
        authUser column: 'ADM_USER_RUN_BY_ID'
    }

    static constraints = {
        startTime    nullable: false
        authUser     nullable: false
        procTitle    nullable: false, size: 0..100
        status       nullable: false, size: 0..20

        endTime      nullable: true
        donePct      nullable: true, size: 0..22
        remainPct    nullable: true, size: 0..22
        outResult    nullable: true, size: 0..22
        donePctSub   nullable: true, size: 0..22
        remainPctSub nullable: true, size: 0..22
        params       nullable: true, size: 0..2000
        outMessage   nullable: true, size: 0..2000
        sqlError     nullable: true, size: 0..2000
    }
}