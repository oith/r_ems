package org.reflection.ems

class EmsStudentAdult extends EmsStudent {  //could be extend from adult person

    static mapping = {
        table 'EMS_STUDENT_ADULT'
    }

    static constraints = {
        //createdDate     nullable: false, display: false;
        //createdBy       nullable: false, display: false;

        //modifiedDate    nullable: true, display: false;
        //modifiedBy      nullable: true, display: false;
    }

}
