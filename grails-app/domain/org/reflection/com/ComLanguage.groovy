package org.reflection.com

class ComLanguage {

    ComLookup comLookupLanguage

    Byte      sortingOrder
    String    remarks
    Integer   readingValue,
              speakingValue,
              understandingValue,
              writingValue

    static mapping = {
        version false
        table 'COM_LANGUAGE'
        tablePerConcreteClass(true)
    }

    static constraints = {
        comLookupLanguage  nullable: false

        sortingOrder       nullable: true
        remarks            nullable: true
        readingValue       nullable: true
        speakingValue      nullable: true
        understandingValue nullable: true
        writingValue       nullable: true
    }
}
