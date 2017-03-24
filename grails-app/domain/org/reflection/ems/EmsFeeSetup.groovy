package org.reflection.ems

class EmsFeeSetup {
    EmsClass     emsClass
    EmsGroup     emsGroup
    EmsTypeFee   emsTypeFee
    EmsFrequency emsFrequency

    Double       amount

    static constraints = {
        emsTypeFee   nullable: false

        emsClass     nullable: true
        emsGroup     nullable: true
        emsFrequency nullable: true
        amount       nullable: true
    }
}