package org.reflection.com

import grails.transaction.Transactional
import org.apache.commons.codec.binary.Hex

@Transactional
class CommonService {

    def springSecurityService,
        currentUser

    String getHdCode(String dcCode) {
        return String.format("%040x", new BigInteger(1, dcCode.getBytes("UTF8")))
    }

    String getDcCode(String hdCode) {
        return new String(Hex.decodeHex(hdCode.toCharArray()), "UTF8")
    }

    private String generateCode(String prefix, String code) {
        return (prefix + (code.replaceAll("[^\\d\\.]", "").toInteger() + 1).toString().padLeft(8, '0').toString())
    }

    List<ComBloodGroup> getBloodGroupList(){
        ArrayList<ComBloodGroup> bloodGroupList = ComBloodGroup.values()*.value
        return bloodGroupList
    }

    ComBloodGroup getComBloodGroup(String name) {
        ComBloodGroup comBloodGroup
        comBloodGroup = ComBloodGroup.valueOf(name)
        return comBloodGroup
    }
}
