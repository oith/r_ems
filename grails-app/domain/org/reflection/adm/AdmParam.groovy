package org.reflection.adm

class AdmParam {

    Byte    sortingOrder
    String  caption,
            captionNative,
            cmd,
            defaultVal,
            helpText,
            paramName,
            paramType
    Boolean isActive

    static mapping = {
        version false
        table   'ADM_PARAM'
    }

    static constraints = {
        cmd           nullable: true, size: 0..1000
        captionNative nullable: true, size: 0..1000
        defaultVal    nullable: true, size: 0..500
        helpText      nullable: true, size: 0..1000
        paramName     nullable: true, size: 0..30
        paramType     nullable: true, size: 0..20
    }
}

