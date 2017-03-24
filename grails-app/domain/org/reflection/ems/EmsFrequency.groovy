package org.reflection.ems

enum EmsFrequency {
    YEARLY   ("Yearly"),
    MONTHLY  ("Monthly"),
    ANY_TIME ("Any Time")

    final String value;

    EmsFrequency(String value) {
        this.value = value;
    }

    String getKey() { name(); }

    String toString() { value; }
}
