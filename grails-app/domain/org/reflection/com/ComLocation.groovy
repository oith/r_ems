package org.reflection.com

class ComLocation {
    ComLocationType comLocationType
    ComLocation     comLocation

    String          code,
                    name,
                    nameBn
    Boolean         isActive = true

    static mapping = {
        version         true
        table           'COM_LOCATION'
        comLocation     column: 'PARENT_ID'
        comLocationType column: 'LOCATION_TYPE'
        sort            name: 'asc'
    }

    static constraints = {
        comLocationType nullable: false, size: 0..30
        code            nullable: false, size: 0..30//, unique: 'locationType'
        name            nullable: false, size: 0..30
        nameBn          nullable: false, display: false, size: 0..100
        isActive        nullable: false, display: false

        comLocation     nullable: true
    }

    String toString() {
        return name
    }
}
