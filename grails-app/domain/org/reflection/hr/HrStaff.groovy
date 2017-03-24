package org.reflection.hr

import org.reflection.com.ComPersonAdult
import org.reflection.ems.EmsStaffGroup

class HrStaff extends ComPersonAdult {
    EmsStaffGroup         staffGroup;
    HrStaffAdditionalInfo hrStaffAdditionalInfo;

    String                code;
    Double                salaryBasic,
                          salaryGross;
    Date                  joiningDate;

    static hasMany = [
            hrStaffTrainings     : HrStaffTraining,
            hrStaffLanguages     : HrStaffLanguage,
            hrStaffEducationInfos: HrStaffEducationInfo,
            hrStaffContactInfos  : HrStaffContactInfo,
            hrStaffJobHistorys   : HrStaffJobHistory,
            hrStaffContactPersons: HrStaffContactPerson
    ]

    static mapping = {
        table 'HR_STAFF';
        tablePerConcreteClass(true)
    }
    static constraints = {
        //createdDate     nullable: false, display: false;
        //createdBy       nullable: false, display: false;

        //modifiedDate    nullable: true, display: false;
        //modifiedBy      nullable: true, display: false;

        staffGroup            nullable: false;
        code                  nullable: false;
        joiningDate           nullable: false;

        salaryBasic           nullable: true;
        salaryGross           nullable: true;
        hrStaffAdditionalInfo nullable: true;
    }
}
