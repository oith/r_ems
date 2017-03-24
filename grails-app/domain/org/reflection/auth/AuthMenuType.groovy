package org.reflection.auth

enum AuthMenuType {
    NONE                   ("None"),
    ALL                    ("All"),
    LEFT                   ("Left"),
    TOP_TREE               ("Top Tree"),
    TOP_MEGA               ("Top Mega"),
    LEFT_TOP_TREE          ("Left & Top Tree"),
    LEFT_TOP_MEGA          ("Left & Top Mega"),
    LEFT_NONE              ("Left & None"),
    TOP_TREE_TOP_MEGA      ("Top Tree & Top Mega"),
    TOP_MEGA_NONE          ("Top Mega & None"),
    TOP_TREE_NONE          ("Top Tree & None"),
    LEFT_TOP_TREE_NONE     ("Left, Top Tree & None"),
    LEFT_TOP_MEGA_NONE     ("Left, Top Mega & None"),
    TOP_TREE_TOP_MEGA_NONE ("Top Tree, Top Mega & None")

    final String value

    AuthMenuType(String value) {
        this.value = value
    }

    String getKey() { name() }

    String toString() { value }
}
