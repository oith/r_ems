package org.reflection.com

import org.reflection.auth.AuthUser


class ComHandleError {
    AuthUser authUserProcBy

    String   errorCode,
             errorMessage,
             functionName,
             uniqueId,
             uniqueIdSub

    Date     errorDate

    static mapping = {
        version false
        table   'COM_HANDLE_ERROR'
    }

    static constraints = {
        functionName   nullable: false, size: 0..30
        errorMessage   nullable: false, size: 0..2000
        errorCode      nullable: false, size: 0..30
        errorDate      nullable: false
        authUserProcBy nullable: false
        uniqueId       nullable: false

        uniqueIdSub    nullable: true, size: 0..100
    }
}

