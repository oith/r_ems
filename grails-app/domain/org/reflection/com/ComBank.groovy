package org.reflection.com

class ComBank {
    Byte    sortOrder
    String  title,
            titleNative
    Boolean isActive = true

    static mapping = {
        version false
        table   'COM_BANK'
    }

    static constraints = {
        title       nullable: false
        isActive    nullable: false

        sortOrder   nullable: true
        titleNative nullable: true
    }

    @Override
    String toString() {
        return title
    }
}
