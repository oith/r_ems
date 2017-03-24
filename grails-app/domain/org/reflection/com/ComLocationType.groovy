package org.reflection.com

/**
 * Created by hoshen.mahmud on 06-Feb-17.
 */
enum ComLocationType {
    PMU            ("PMU"),
    DIVISION       ("Division"),
    DISTRICT       ("District"),
    UPAZILA        ("Upazila"),
    UNION_PARISHAD ("Union Parishad"),
    WARD_NO        ("Ward No");

    final String value;

    ComLocationType(String value) {
        this.value = value;
    }

    String getKey() { name(); }

    String toString() { value; }
}