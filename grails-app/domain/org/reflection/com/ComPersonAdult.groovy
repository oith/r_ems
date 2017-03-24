package org.reflection.com

import org.reflection.ems.ComEducationLevel

abstract class ComPersonAdult extends ComPerson {
    ComEducationLevel comEducationLevel
    ComGender         childOneGender,
                      childThreeGender,
                      childTwoGender
    ComProfession     comProfession,
                      comProfessionSpouse
    String            childOneName,
                      childThreeName,
                      childTwoName,
                      nid,
                      spouseName,
                      spouseNameBng,
                      tinNumber,
                      voterIdentityNumber
    Integer           noOfChildren
    Date              childOneDob,
                      childThreeDob,
                      childTwoDob
    Boolean           isFreedomFighter

    static mapping = {
        table 'COM_PERSON_ADULT'
        tablePerConcreteClass(true)
    }

    static constraints = {
        //createdDate     nullable: false, display: false
        //createdBy       nullable: false, display: false

        //modifiedDate    nullable: true, display: false
        //modifiedBy      nullable: true, display: false

        comEducationLevel   nullable: true
        childOneGender      nullable: true
        childThreeGender    nullable: true
        childTwoGender      nullable: true
        comProfession       nullable: true
        comProfessionSpouse nullable: true
        childOneName        nullable: true
        childThreeName      nullable: true
        childTwoName        nullable: true
        nid                 nullable: true
        spouseName          nullable: true
        spouseNameBng       nullable: true
        tinNumber           nullable: true
        voterIdentityNumber nullable: true
        noOfChildren        nullable: true
        childOneDob         nullable: true
        childThreeDob       nullable: true
        childTwoDob         nullable: true
        isFreedomFighter    nullable: true
    }
}
