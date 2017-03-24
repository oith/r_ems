package org.reflection.com

abstract class ComPerson {

    ComBloodGroup comBloodGroup
    ComGender     comGender
    ComLocation   comLocationPermanent,
                  comLocationPresent
    ComProfession comProfessionFather,
                  comProfessionMother
    ComReligion   comReligion
    ComTitle      comTitle

    String        addressPrmnHn,
                  addressPrmnHnNative,
                  addressPrmnPo,
                  addressPrmnPoNative,
                  addressPrmnVill,
                  addressPrmnVillNative,
                  addressPrsnHn,
                  addressPrsnHnNative,
                  addressPrsnPo,
                  addressPrsnPoNative,
                  addressPrsnVill,
                  addressPrsnVillNative,
                  birthRegNo,
                  email,
                  fatherName,
                  fatherNameNative,
                  firstName,
                  firstNameNative,
                  fullName,
                  fullNameNative,
                  imagePath,
                  lastName,
                  lastNameNative,
                  middleName,
                  middleNameNative,
                  mobile,
                  motherName,
                  motherNameNative,
                  nickName,
                  nickNameNative
    Date          dob

    static mapping = {
        version false
        table 'COM_PERSON'
        tablePerConcreteClass(true)
    }

    static constraints = {
        comGender             nullable: false
        comReligion           nullable: false
        comTitle              nullable: false
        dob                   nullable: false
        fullName              nullable: false

        comBloodGroup         nullable: true
        comLocationPermanent  nullable: true
        comLocationPresent    nullable: true
        comProfessionFather   nullable: true
        comProfessionMother   nullable: true
        birthRegNo            nullable: true
        email                 nullable: true
        mobile                nullable: true
        addressPrmnHn         nullable: true
        addressPrmnHnNative   nullable: true
        addressPrmnPo         nullable: true
        addressPrmnPoNative   nullable: true
        addressPrmnVill       nullable: true
        addressPrmnVillNative nullable: true
        addressPrsnHn         nullable: true
        addressPrsnHnNative   nullable: true
        addressPrsnPo         nullable: true
        addressPrsnPoNative   nullable: true
        addressPrsnVill       nullable: true
        addressPrsnVillNative nullable: true
        fatherName            nullable: true
        fatherNameNative      nullable: true
        firstName             nullable: true
        firstNameNative       nullable: true
        fullNameNative        nullable: true
        imagePath             nullable: true
        lastName              nullable: true
        lastNameNative        nullable: true
        middleName            nullable: true
        middleNameNative      nullable: true
        motherName            nullable: true
        motherNameNative      nullable: true
        nickName              nullable: true
        nickNameNative        nullable: true
    }
}
