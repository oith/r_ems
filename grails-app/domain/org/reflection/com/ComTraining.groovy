package org.reflection.com

class ComTraining {

    ComLookup comLookupTraining

    Byte      sortingOrder
    String    institute,
              remarks,
              result,
              resultOutOf,
              title,
              trainingDuration
    Date      endDate,
              startDate

    static mapping = {
        version false
        table   'COM_TRAINING'
        tablePerConcreteClass(true)
    }

    static constraints = {
        comLookupTraining nullable: false
        institute         nullable: false
        result            nullable: false

        sortingOrder              nullable: true
        remarks           nullable: true
        resultOutOf       nullable: true
        title             nullable: true
        trainingDuration  nullable: true
        endDate           nullable: true
        startDate         nullable: true
    }
}
