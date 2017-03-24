package org.reflection.com

/**
 * Created by hoshen.mahmud on 06-Feb-17.
 */
enum ComReligion {
    ISLAM     ("Islam"),
    HINDU     ("Hindu"),
    CHRISTIAN ("Christian"),
    BUDDAH    ("Buddah");

    final String value;

    ComReligion(String value) {
        this.value = value;
    }

    String getKey() { name(); }

    String toString() { value; }
}