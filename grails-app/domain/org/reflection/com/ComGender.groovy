package org.reflection.com

/**
 * Created by hoshen.mahmud on 06-Feb-17.
 */
enum ComGender {
    MALE    ("Male"),
    FEMALE  ("Female"),
    OTHERS  ("Others");

    final String value;

    ComGender(String value) {
        this.value = value;
    }

    String getKey() { name(); }

    String toString() { value; }
}