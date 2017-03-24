package org.reflection.adm

class AdmPermissible {

    AdmPermissible parentAdmPermissible

    Byte    sortingOrder
    String  code,
            title,
            remarks,
            itemType
    Boolean isActive

    static  hasMany = [admPermissible: AdmPermissible]

    static mapping = {
        tablePerHierarchy    false
        version              false
        table                'ADM_PERMISSIBLE'
        parentAdmPermissible column: 'PARENT_ID'
    }

    static constraints = {
        title                nullable: false, size: 0..100
        itemType             nullable: false, size: 0..3
        code                 nullable: false, size: 0..30, unique: true

        parentAdmPermissible nullable: true
        isActive             nullable: true, size: 0..1
        sortingOrder                 nullable: true, size: 0..3
        remarks              nullable: true, size: 0..500
    }

    String toString() {
        return title
    }
}