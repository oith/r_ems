package org.reflection.hr

import org.reflection.com.ComTraining

/**
 * Created by hoshen.mahmud on 10-Mar-17.
 */
class HrStaffTraining extends ComTraining{

    HrStaff hrStaff

    static mapping = {
        table 'HR_STAFF_TRAINING'
    }

    static constraints = {
        //createdDate     nullable: false, display: false;
        //createdBy       nullable: false, display: false;

        //modifiedDate    nullable: true, display: false;
        //modifiedBy      nullable: true, display: false;
        hrStaff  nullable: false
    }
}
