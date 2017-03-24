package org.reflection.hr

import org.reflection.com.ComEducationInfo

/**
 * Created by hoshen.mahmud on 10-Mar-17.
 */
class HrStaffEducationInfo extends ComEducationInfo {
    HrStaff hrStaff

    static mapping = {
        table 'HR_STAFF_EDUCATION_INFO'
    }

    static constraints = {
        //createdDate     nullable: false, display: false;
        //createdBy       nullable: false, display: false;

        //modifiedDate    nullable: true, display: false;
        //modifiedBy      nullable: true, display: false;
        hrStaff  nullable: false
    }
}
