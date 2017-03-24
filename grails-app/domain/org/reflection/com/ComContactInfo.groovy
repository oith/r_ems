package org.reflection.com

class ComContactInfo {

    ComContactType comContactType

    Byte           sortingOrder
    String         contactValue,
                   imeiNo

    static mapping = {
        version false
        table   'COM_CONTACT_INFO'
        tablePerConcreteClass(true)
    }

    static constraints = {
        comContactType nullable: false
        contactValue   nullable: false

        sortingOrder           nullable: true
        imeiNo         nullable: true
    }
}
