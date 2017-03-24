package org.reflection.hr

import org.reflection.com.ComJobHistory

/**
 * Created by hoshen.mahmud on 10-Mar-17.
 */
class HrStaffJobHistory extends ComJobHistory {
    HrStaff hrStaff

    static mapping = {
        table 'HR_STAFF_JOB_HISTORY'
    }

    static constraints = {
        //createdDate     nullable: false, display: false;
        //createdBy       nullable: false, display: false;

        //modifiedDate    nullable: true, display: false;
        //modifiedBy      nullable: true, display: false;
        hrStaff nullable: false
    }
}
