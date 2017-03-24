package org.reflection.ems

import org.reflection.com.ComFingerPrint

class EmsStudentFingerPrint {
    EmsStudent     emsStudent
    ComFingerPrint comFingerPrint
    byte[]         fpData


    static mapping = {
        table "EMS_STUDENT_FINGER_PRINT"
    }

    static constraints = {
        emsStudent     nullable: false
        comFingerPrint nullable: false
        fpData         nullable: false
    }
}
