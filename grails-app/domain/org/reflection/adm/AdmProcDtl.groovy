package org.reflection.adm

class AdmProcDtl {
    AdmParam   admParam
    AdmProcMst admProcMst
    WidgetType widgetType
    ZoneType   zoneType

    Byte       sortingOrder
    String     cmd,
               defaultVal,
               helpText,
               widgetIdentity,
               widgetLabel
    Boolean    isActive,
               isMandatory

    static mapping = {
        version    false
        table      'ADM_PROC_DTL'
        admProcMst column: 'ADM_PROC_MST_ID'
        admParam   column: 'ADM_PARAM_ID'
    }

    static constraints = {
        admProcMst      nullable: false
        zoneType        nullable: false, size: 0..20

        isActive        nullable: true, size: 0..1
        isMandatory     nullable: true, size: 0..1
        sortingOrder            nullable: true, size: 0..3
        admParam        nullable: true, size: 0..19
        widgetType      nullable: true, size: 0..20
        widgetIdentity  nullable: true, size: 0..30
        widgetLabel     nullable: true, size: 0..30
        defaultVal      nullable: true, size: 0..500
        cmd             nullable: true, size: 0..1000
        helpText        nullable: true, size: 0..1000
    }

    String toString() {
        return widgetLabel
    }
}