package org.reflection.com

/**
 * Created by hoshen.mahmud on 08-Mar-17.
 */
enum ComBloodGroup {
    A_POSITIVE  ("A+"),
    A_NEGATIVE  ("A-"),
    B_POSITIVE  ("B+"),
    B_NEGATIVE  ("B-"),
    AB_POSITIVE ("AB+"),
    AB_NEGATIVE ("AB-"),
    O_POSITIVE  ("O+"),
    O_NEGATIVE  ("O-")

    final String value

    ComBloodGroup(String value) {
        this.value = value
    }

    String getKey() { name() }

    String toString() { value }
}
